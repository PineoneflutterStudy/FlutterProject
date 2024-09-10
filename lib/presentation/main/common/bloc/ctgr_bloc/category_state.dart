part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = CategoryLoading;
  const factory CategoryState.success(List<Category> categorys, Category selected) = CategorySuccess;
  const factory CategoryState.error(ErrorResponse error) = CategoryError;
}