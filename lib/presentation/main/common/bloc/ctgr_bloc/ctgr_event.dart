part of 'ctgr_bloc.dart';

abstract class CtgrEvent{
  const CtgrEvent();
}

class CtgrInitialized extends CtgrEvent{
  final MenuType menuType;
  CtgrInitialized(this.menuType);
}