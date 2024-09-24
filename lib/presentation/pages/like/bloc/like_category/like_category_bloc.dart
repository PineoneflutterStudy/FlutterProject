import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/error/error_response.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/common/category.model.dart';
import '../../../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../domain/model/common/result.dart';

part 'like_category_event.dart';
part 'like_category_state.dart';
part 'like_category_bloc.freezed.dart';

class LikeCategoryBloc extends Bloc<LikeCategoryEvent, LikeCategoryState> {

  final DisplayUsecase _displayUsecase;

  LikeCategoryBloc(this._displayUsecase) : super(LikeCategoryState.loading()) {
    on<LikeCategoryEvent>((event, emit) async {
      await event.when(
          getCategoryList: (menu, selected) async => await _onGetCategorys(emit, menu,selected),
          setCategorySelected: (categorys, selected, regionName) async => await _onCategorySelected(emit, categorys, selected, regionName),
      );
    });
  }

  /// menutype에 따른 카테고리 리스트 불러오기
  /// 선택된 카테고리가 있으면 그 카테고리를 선택, 없으면 첫 번째 카테고리 선택
  Future<void> _onGetCategorys(Emitter<LikeCategoryState> emit, MenuType menuType, String selectedId) async {
    try {
      final response = await _fetch(menuType);
      response.when(
          success: (categorys) {
            Category selected;

            selected = (categorys as List<Category>).firstWhere((category) => category.ctgrId == selectedId,
                orElse: () => categorys.isNotEmpty ? categorys[0] : throw Exception('Category not found'));

            print('selected  : ${selected}');
            emit(LikeCategoryState.success(categorys, selected, ''));
          }
          , failure: (error) {
            emit(LikeCategoryState.error(ErrorResponse(status: '1', code: '9999', message: 'get category list error')));
          }
      );
    } catch (error) {
      CustomLogger.logger.d('error : ${error}');
      print('error  : ${error}');
      emit(LikeCategoryState.error(ErrorResponse(status: '1', code: '9999', message: 'get category list error')));
    }
  }

  /// 선택된 카테고리 update
  Future<void> _onCategorySelected(Emitter<LikeCategoryState> emit, List<Category> categorys, Category catogory, String regionName) async {
    emit(LikeCategoryState.success(categorys, catogory, regionName));
  }


  Future<Result<List<Category>>> _fetch(MenuType menuType) async {
    return await _displayUsecase.execute(
        usecase: GetCategorysUsecase(menuType)
    );
  }
}

