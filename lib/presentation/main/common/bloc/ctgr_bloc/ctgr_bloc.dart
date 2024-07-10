import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../../core/utils/exception/common_exception.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';

part 'ctgr_event.dart';

part 'ctgr_state.dart';

part 'ctgr_bloc.freezed.dart';

class CtgrBloc extends Bloc<CtgrEvent, CtgrState> {
  final DisplayUsecase _displayUsecase;

  CtgrBloc(this._displayUsecase) : super(CtgrState()){
    on<CtgrInitialized>(_onCtgrInitialized);
  }

  Future<void> _onCtgrInitialized(
    CtgrInitialized event,
    Emitter<CtgrState> emit,
  ) async {
    final menuType = event.menuType;
    emit(state.copyWith(status: Status.loading));
    // loading image test
    // await Future.delayed(Duration(seconds: 2));
    try {
      final response = await _fetch(menuType);
      response.when(Success: (categorys) {
        emit(state.copyWith(status: Status.success, ctgrs: categorys, menuType: menuType));
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  Future<Result<List<Category>>> _fetch(MenuType menuType) async {
    return await _displayUsecase.execute(
        usecase: GetCategorysUsecase(menuType)
    );
  }
}
