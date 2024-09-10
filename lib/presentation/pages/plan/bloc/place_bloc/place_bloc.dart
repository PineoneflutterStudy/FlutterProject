import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../../../../domain/usecase/planner/plan/get_place_list.usecase.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';

part 'place_state.dart';
part 'place_event.dart';

part 'place_bloc.freezed.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  final PlannerUsecase _plannerUsecase;
  PlaceBloc(this._plannerUsecase) : super(const PlaceState.loading()){
    on<PlaceEvent>((event, emit) async {
      await event.when(
          search: (search) async => await _onPlaceSearch(emit, search),
          searchXY: (search, category,address, page) async => await _onPlaceSearchXY(emit, search,category, address, page)
      );
    });
  }

  Future<void> _onPlaceSearch(Emitter<PlaceState> emit, String search) async {
    try {
      print('search : $search');
      final response = await _fetch(search: search);
      response.when(success: (result) {
        (result.isNotEmpty == true)
            ? emit(PlaceState.success(result))
            : emit(PlaceState.empty());
      }, failure: (error) {
        emit(PlaceState.error(ErrorResponse(
            status: '1', code: '9999', message: 'get place list error')));
      });
    } catch (error) {
      CustomLogger.logger.e('Catch error: ${error.toString()}');
      emit(PlaceState.error(ErrorResponse(status: '1', code: '9999', message: 'get place list error')));
    }
  }

  Future<void> _onPlaceSearchXY(Emitter<PlaceState> emit, String search, String? category, Address address, int? page) async {
    final _search = search;
    final _category = category ?? 'FD6';
    final _x = address.x;
    final _y= address.y;
    final _radius= address.radius ?? 20000;
    final _page= page ?? 1;
    final _sort = address.sort ?? 'accuracy';

    print('search : $search, address : $address, category : $category, page : $page');
    try {
      final response = await _fetch(search: _search, category: _category, x: _x, y: _y, radius: _radius, page: _page, sort: _sort);
      response.when(success: (result) {
        (result.isNotEmpty == true)
            ? emit(PlaceState.success(result))
            : emit(PlaceState.empty());
      }, failure: (error) {
        emit(PlaceState.error(ErrorResponse(
            status: '1', code: '9999', message: 'get place list error')));
      });
    } catch (error) {
      CustomLogger.logger.e('Catch error: ${error.toString()}');
      emit(PlaceState.error(ErrorResponse(status: '1', code: '9999', message: 'get place list error')));
    }
  }

  Future<Result<List<Place>>> _fetch({required String search, String? category,String? x, String? y, int? radius, int? page, String? sort}) async {
    return await _plannerUsecase.execute(
        usecase: GetPlaceListUsecase(search: search,category: category,x: x,y: y,radius: radius,page: page,sort: sort)
    );
  }
}