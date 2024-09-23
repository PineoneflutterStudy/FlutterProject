import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../domain/model/display/category/category.model.dart';
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
        delete: (id, isFilter) => _onDelete(emit, id, isFilter),
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
        emit(LikePlaceState.empty(LikeState.total, category));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  /// 찜목록 아이템 삭제
  Future<void> _onDelete(Emitter<LikePlaceState> emit, String placeId, bool isFilter) async {
    // var docRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, placeId);
    // // if (docRef != null) {
    // //   firestore.deleteDocument(docRef);
    // //   if (isFilter) {
    // //     await _sortByRegion(emit, _filter);
    // //   } else{
    // //     await _getLikedPlace(emit, _ctgrId);
    // //   }
    // // } else {
    // //   CustomLogger.logger.e("Like Document is null");
    // // }
  }

  void _onFailed(Emitter<LikePlaceState> emit, String errorMsg) {
    emit(LikePlaceState.error());
  }
}
