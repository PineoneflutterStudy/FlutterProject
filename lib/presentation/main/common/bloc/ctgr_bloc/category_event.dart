part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.getCategoryList(MenuType menuType, {@Default('') String selectedCg}) = GetCategoryList;
  const factory CategoryEvent.setCategorySelected(Category selected) = SetCategorySelected;
}