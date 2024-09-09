part of 'ctgr_bloc.dart';

abstract class CtgrEvent{
  const CtgrEvent();
}

class getCategoryListByMenuType extends CtgrEvent{
  final MenuType menuType;
  getCategoryListByMenuType(this.menuType);
}

class getCategoryListWithSelected extends CtgrEvent{
  final MenuType menuType;
  final String selected;
  getCategoryListWithSelected(this.menuType, this.selected);
}


class CtgrCategorySelected extends CtgrEvent {
  final Category selectedCategory;

  CtgrCategorySelected(this.selectedCategory);
}