import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/model/display/place/place.model.dart';
import '../../../../../domain/usecase/like/place/get_like_place.usecase.dart';
import '../../../../../domain/usecase/like/place/like_place.usecase.dart';

part 'like_place_event.dart';
part 'like_place_state.dart';
part 'like_place_bloc.freezed.dart';

class LikePlaceBloc extends Bloc<LikePlaceEvent, LikePlaceState> {

  final LikePlaceUsecase _likePlaceUsecase;

  LikePlaceBloc(this._likePlaceUsecase) : super(const LikePlaceState.initial()) {
    on<LikePlaceEvent>((event, emit) {
      return event.when(
        started: () => _onInitializedPlace(emit),
      );
    });
  }

  Future<void> _onInitializedPlace(Emitter<LikePlaceState> emit) async {
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
}
