import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../../domain/model/common/result.dart';
import '../../../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';

part 'category_event.dart';

part 'category_state.dart';

part 'category_bloc.freezed.dart';

/**
 * home, plan, like 사용
 */
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final DisplayUsecase _displayUsecase;

  CategoryBloc(this._displayUsecase) : super(CategoryState.loading()){
    on<CategoryEvent>((event, emit) async {
      await event.when(
          getCategoryList: (menu, selected) async => await _onGetCategorys(emit, menu,selected),
          setCategorySelected: (selected) async => await _onCategorySelected(emit,selected)
      );
    });
  }

  /// menutype에 따른 카테고리 리스트 불러오기
  /// 선택된 카테고리가 있으면 그 카테고리를 선택, 없으면 첫 번째 카테고리 선택
  Future<void> _onGetCategorys(Emitter<CategoryState> emit, MenuType menuType, String selectedId) async {
    try {
      final response = await _fetch(menuType);
      response.when(success: (categorys) {
        Category selected;

        selected = (categorys as List<Category>).firstWhere((category) => category.ctgrId == selectedId,
            orElse: () => categorys.isNotEmpty ? categorys[0] : throw Exception('Category not found'));

        print('selected  : ${selected}');
        emit(CategoryState.success(categorys, selected));
      }, failure: (error) {
        emit(CategoryState.error(ErrorResponse(status: '1', code: '9999', message: 'get category list error')));
      });
    } catch (error) {
      CustomLogger.logger.d('error : ${error}');
      emit(CategoryState.error(ErrorResponse(status: '1', code: '9999', message: 'get category list error')));
    }
  }

  /// 선택된 카테고리 update
  Future<void> _onCategorySelected(Emitter<CategoryState> emit, Category newSelected) async {
    state.maybeWhen(
      success: (categorys, selected) => emit(CategoryState.success(categorys, newSelected)),
      orElse: () {},
    );
  }


  Future<Result<List<Category>>> _fetch(MenuType menuType) async {
    return await _displayUsecase.execute(
        usecase: GetCategorysUsecase(menuType)
    );
  }
}
