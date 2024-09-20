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

  String _ctgrId = '';
  String _filter = '';

  LikePlaceBloc(this._likePlaceUsecase) : super(const LikePlaceState.initial()) {
    on<LikePlaceEvent>((event, emit) {
      return event.when(
        started: (ctgrId) => _getLikedPlace(emit, ctgrId),
        delete: (id, isFilter) => _onDelete(emit, id, isFilter),
        region: (result) => _sortByRegion(emit, result),
      );
    });
  }

  Future<List<Place>> _fetch(String ctgrId) async {
    return await _likePlaceUsecase.execute(
      usecase: GetLikePlaceUsecase(ctgrId),
    );
  }

  Future<void> _getLikedPlace(Emitter<LikePlaceState> emit, String ctgrId) async {
    emit(LikePlaceState.loading());
    _ctgrId = ctgrId;

    try {
      final response = await _fetch(_ctgrId);
      if (response.isNotEmpty) {
        emit(LikePlaceState.success(LikeState.total, response, _ctgrId));
      } else {
        emit(LikePlaceState.empty(LikeState.total, _ctgrId));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  Future<void> _sortByRegion(Emitter<LikePlaceState> emit, String selectedFilter) async {
    emit(LikePlaceState.loading());
    _filter = selectedFilter;

    List<Place> filterList = [];
    print('이거탐 ?');
    try {
      final placeList = await _fetch(_ctgrId);
      if (placeList.isNotEmpty) {
        for (var place in placeList) {
          String address = place.addressName;
          print('Address -> $address');
          if (address.isNotEmpty && address.contains(selectedFilter)) {
            print('필터링된 장소 이름 -> ${address}');
            filterList.add(place);
          }
        }

        if (filterList.isNotEmpty && filterList.length > 0) {
          emit(LikePlaceState.success(LikeState.filter, filterList, _ctgrId));
        } else {
          emit(LikePlaceState.empty(LikeState.filter, _ctgrId));
        }
      } else {
        emit(LikePlaceState.empty(LikeState.total, _ctgrId));
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  /// 찜목록 아이템 삭제
  Future<void> _onDelete(Emitter<LikePlaceState> emit, String placeId, bool isFilter) async {
    var docRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, placeId);
    if (docRef != null) {
      firestore.deleteDocument(docRef);
      if (isFilter) {
        await _sortByRegion(emit, _filter);
      } else{
        await _getLikedPlace(emit, _ctgrId);
      }
    } else {
      CustomLogger.logger.e("Like Document is null");
    }
  }
}
