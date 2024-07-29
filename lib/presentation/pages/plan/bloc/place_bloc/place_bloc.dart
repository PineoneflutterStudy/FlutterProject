import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/place/place.model.dart';
import '../../../../../domain/usecase/planner/plan/get_place_list.usecase.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';

part 'place_state.dart';
part 'place_event.dart';

part 'place_bloc.freezed.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final PlannerUsecase _plannerUsecase;
  PlaceBloc(this._plannerUsecase) : super(PlaceState()){
    on<PlaceInitialized>(_onPlaceInitialized);
  }

  Future<void> _onPlaceInitialized(
      PlaceInitialized event,
      Emitter<PlaceState> emit,
      ) async {
    final search = event.search ?? '';
    final category = event.category ?? 'FD6';
    final x = event.x ?? '';
    final y= event.y ?? '';
    final radius= event.radius ?? 20000;
    final page= event.page ?? 1;
    final sort = event.sort ?? 'accuracy';

    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(search,category,x,y,radius,page,sort);
      response.when(Success: (places) {
        emit(state.copyWith(status: Status.success, places: places));
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  Future<Result<List<Place>>> _fetch(String search,String category,String x,String y,int radius,int page,String sort) async {
    return await _plannerUsecase.execute(
        usecase: GetPlaceListUsecase(search,category,x,y,radius,page,sort)
    );
  }
}