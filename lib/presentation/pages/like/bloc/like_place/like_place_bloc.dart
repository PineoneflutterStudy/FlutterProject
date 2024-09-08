import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      );
    });
  }

  Future<void> _getLikedPlace(Emitter<LikePlaceState> emit) async {
    emit(LikePlaceState.loading());

    try {
      final response = await _fetch();
      if (response.isNotEmpty) {
        emit(LikePlaceState.success(response));
      } else {
        emit(LikePlaceState.empty());
      }
    } catch (e) {
      emit(LikePlaceState.error());
    }
  }

  Future<List<Place>> _fetch() async {
    return await _likePlaceUsecase.execute(
      usecase: GetLikePlaceUsecase(),
    );
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
