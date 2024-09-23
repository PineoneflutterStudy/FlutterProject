part of 'like_category_bloc.dart';

@freezed
class LikeCategoryState with _$LikeCategoryState {
  const factory LikeCategoryState.loading() = _CategoryLoading;
  const factory LikeCategoryState.success(List<Category> categorys, Category selected, String regionName) = _CategorySuccess;
  const factory LikeCategoryState.error(ErrorResponse error) = _CategoryError;
}
