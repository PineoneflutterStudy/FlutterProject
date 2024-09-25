import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/common/category.model.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../../../../domain/usecase/like/place/get_like_place.usecase.dart';
import '../../../../../domain/usecase/like/place/like_place.usecase.dart';
import '../../utils/like_place_util.dart';

part 'like_place_event.dart';
part 'like_place_state.dart';
part 'like_place_bloc.freezed.dart';

class LikePlaceBloc extends Bloc<LikePlaceEvent, LikePlaceState> with LikePlaceUtil {

  final LikePlaceUsecase _likePlaceUsecase;
  final firestore = FirebaseFirestoreUtil();

  LikePlaceBloc(this._likePlaceUsecase) : super(const LikePlaceState.loading()) {
    on<LikePlaceEvent>((event, emit) {
      return event.when(
        update: (category) => _getLikedPlace(emit, category),
        failed: () => _onFailed,
        region: (category, regionName) => _sortByRegion(emit, category, regionName),
        delete: (id, category, regionName) => _onDelete(emit, id, category, regionName),
        deleteAll: (category, regionName) => _onDeleteAll(emit, category, regionName),
      );
    });
  }

  Future<List<Place>> _fetch(String ctgrId) async {
    return await _likePlaceUsecase.execute(
      usecase: GetLikePlaceUsecase(ctgrId),
    );
  }

  Future<void> _getLikedPlace(Emitter<LikePlaceState> emit, Category category) async {
    emit(LikePlaceState.loading());

    try {
      final response = await _fetch(category.ctgrId);
      if (response.isNotEmpty) {
        emit(LikePlaceState.success(LikeState.total, response, category));
      } else {
        emit(LikePlaceState.empty(LikeState.total, category));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  Future<void> _sortByRegion(Emitter<LikePlaceState> emit, Category category, String regionName) async {
    emit(LikePlaceState.loading());

    try {
      final placeList = await _fetch(category.ctgrId);
      if (placeList.isNotEmpty) {
        List<Place> filter = sortRegion(placeList, regionName);

        if (filter.isNotEmpty && filter.length > 0) {
          emit(LikePlaceState.success(LikeState.filter, filter, category));
        } else {
          emit(LikePlaceState.empty(LikeState.filter, category));
        }
      } else {
        if (regionName.isNotEmpty) {
          emit(LikePlaceState.empty(LikeState.filter, category));
        }  else {
          emit(LikePlaceState.empty(LikeState.total, category));
        }
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  /// 찜목록 아이템 삭제
  Future<void> _onDelete(Emitter<LikePlaceState> emit, String placeId, Category category, String regionName) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, placeId);
    if (docRef != null) {
      firestore.deleteDocument(docRef);
      if (regionName.isNotEmpty) {
        await _sortByRegion(emit, category, regionName);
      } else{
        await _getLikedPlace(emit, category);
      }
    } else {
      CustomLogger.logger.e("Like Document is null");
    }
  }

  /// 찜목록 아이템 일괄 삭제 (전체 / 카테고리 별)
  Future<void> _onDeleteAll(Emitter<LikePlaceState> emit, Category? category, String regionName) async {
    emit(LikePlaceState.loading());

    if (category == null) { // 전체 삭제 카테고리를 (전체) 선택하며 모든 찜목록을 삭제한다.
      var docRefs = await firestore.getCollectionDocRefs(DBKey.DB_LIKES);
      if (docRefs != null && docRefs.isNotEmpty) {
        for (DocumentReference docRef in docRefs) {
          firestore.deleteDocument(docRef);
        }
      } else {
        CustomLogger.logger.e("Like Document is null");
      }
      await _getLikedPlace(emit, Category(ctgrId: '', ctgrName: '전체'));
    }
    else { // 카테고리 별 삭제 선택한 카테고리는 유지하되, 그 안의 데이터는 모두 삭제한다 (지역 필터 기능도 해제된다.)
      final placeList = await _fetch(category.ctgrId);

      for (Place place in placeList) {
        var docRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, place.placeId);
        if (docRef != null) {
          firestore.deleteDocument(docRef);
        }
      }

      if (regionName.isNotEmpty) {
        await _sortByRegion(emit, category, regionName);
      } else {
        await _getLikedPlace(emit, category);
      }
    }
  }

  void _onFailed(Emitter<LikePlaceState> emit, String errorMsg) {
    emit(LikePlaceState.error());
  }
}
