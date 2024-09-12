import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../../../../domain/usecase/like/place/get_like_place.usecase.dart';
import '../../../../../domain/usecase/like/place/like_place.usecase.dart';

part 'like_place_event.dart';
part 'like_place_state.dart';
part 'like_place_bloc.freezed.dart';

class LikePlaceBloc extends Bloc<LikePlaceEvent, LikePlaceState> {

  final LikePlaceUsecase _likePlaceUsecase;
  final firestore = FirebaseFirestoreUtil();

  LikePlaceBloc(this._likePlaceUsecase) : super(const LikePlaceState.initial()) {
    on<LikePlaceEvent>((event, emit) {
      return event.when(
        started: () => _getLikedPlace(emit),
        delete: (id) => _onDelete(emit, id),
        region: (result) => _sortByRegion(emit, result),
        category: (result) => _sortByCategory(emit, result),
      );
    });
  }

  Future<List<Place>> _fetch() async {
    return await _likePlaceUsecase.execute(
      usecase: GetLikePlaceUsecase(),
    );
  }

  Future<void> _getLikedPlace(Emitter<LikePlaceState> emit) async {
    emit(LikePlaceState.loading());

    try {
      final response = await _fetch();
      if (response.isNotEmpty) {
        emit(LikePlaceState.success(LikeState.total, response));
      } else {
        emit(LikePlaceState.empty(LikeState.total));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  Future<void> _sortByRegion(Emitter<LikePlaceState> emit, String selectedFilter) async {
    emit(LikePlaceState.loading());
    List<Place> filterList = [];

    try {
      final placeList = await _fetch();
      if (placeList.isNotEmpty) {
        for (var place in placeList) {
          String address = place.addressName;

          if (address.isNotEmpty && address.contains(selectedFilter)) {
            print('필터링된 장소 이름 -> ${address}');
            filterList.add(place);
          }
        }

        if (filterList.isNotEmpty && filterList.length > 0) {
          emit(LikePlaceState.success(LikeState.filter, filterList));
        } else {
          emit(LikePlaceState.empty(LikeState.filter));
        }
      } else {
        emit(LikePlaceState.empty(LikeState.total));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  Future<void> _sortByCategory(Emitter<LikePlaceState> emit, String selectedFilter) async {
  }


  /// 찜목록 아이템 삭제
  Future<void> _onDelete(Emitter<LikePlaceState> emit, String placeId) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, placeId);
    if (docRef != null) {
      firestore.deleteDocument(docRef);
      await _getLikedPlace(emit);
    } else {
      CustomLogger.logger.e("Like Document is null");
    }
  }
}
