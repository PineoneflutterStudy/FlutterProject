part of 'user_bloc.dart';

/// ## 마이페이지 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;

  const factory UserEvent.logoutRequested() = _LogoutRequested;

  const factory UserEvent.errorOccurred() = _ErrorOccurred;
}
