part of 'ctgr_bloc.dart';

@freezed
class CtgrState with _$CtgrState {
  factory CtgrState({
    @Default(Status.initial) Status status,
    @Default(MenuType.home) MenuType menuType,
    @Default(<Category>[]) List<Category> ctgrs,
    ErrorResponse? error,
  }) = _CtgrState;
}