part of 'like_category_bloc.dart';

@freezed
class LikeCategoryEvent with _$LikeCategoryEvent {
  const factory LikeCategoryEvent.getCategoryList(MenuType menuType, {@Default('') String selected}) = _GetCategoryList;
  const factory LikeCategoryEvent.setCategorySelected(List<Category> categorys, Category selected, String regionName) = _SetCategorySelected;
}
