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

/**
 * home, plan, like 사용
 */
class CtgrBloc extends Bloc<CtgrEvent, CtgrState> {
  final DisplayUsecase _displayUsecase;

  CtgrBloc(this._displayUsecase) : super(CtgrState()){
    on<getCategoryListByMenuType>(_onGetCategorys);
    on<getCategoryListWithSelected>(_onGetCategorysWithSelected);
    on<CtgrCategorySelected>(_onCtgrCategorySelected);
  }

  /// menutype에 따른 카테고리 리스트 불러오기
  /// 처음 selected > 첫번째 카테고리
  Future<void> _onGetCategorys(
    getCategoryListByMenuType event,
    Emitter<CtgrState> emit,
  ) async {
    final menuType = event.menuType;
    emit(state.copyWith(status: Status.loading));
    try {
      final response = await _fetch(menuType);
      response.when(Success: (categorys) {
        emit(state.copyWith(status: Status.success, ctgrs: categorys, menuType: menuType, selectedCategory: categorys.isNotEmpty ? categorys[0] : null));
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  /// menutype에 따른 카테고리 리스트 불러오기
  /// 처음 selected > 입력된 category
  Future<void> _onGetCategorysWithSelected(getCategoryListWithSelected event, Emitter<CtgrState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final menuType = event.menuType;
    final categoryId = event.selected;
    print('menu : $menuType, cg : $categoryId');
    try {
      final response = await _fetch(menuType);
      response.when(Success: (categorys) {
        print('categorys : $categorys');
        Category selected = (categorys as List<Category> ).firstWhere(
              (category) => category.ctgrId == categoryId,
          orElse: () => categorys.isNotEmpty ? categorys[0] : throw Exception('Category not found'), // 비어있지 않으면 첫 번째 카테고리 반환, 비어있으면 예외 발생
        );
        print('selected : $selected');
        emit(state.copyWith(status: Status.success, ctgrs: categorys, menuType: menuType, selectedCategory: selected));
      }, failure: (error) {
        emit(state.copyWith(status: Status.error, error: error));
      });
    } catch (error) {
      emit(state.copyWith(status: Status.error, error: CommonException.setError(error)));
    }
  }

  /// 선택된 카테고리 update
  Future<void> _onCtgrCategorySelected(
      CtgrCategorySelected event,
      Emitter<CtgrState> emit,
      ) async {
    emit(state.copyWith(selectedCategory: event.selectedCategory));
  }

  Future<Result<List<Category>>> _fetch(MenuType menuType) async {
    return await _displayUsecase.execute(
        usecase: GetCategorysUsecase(menuType)
    );
  }
}
