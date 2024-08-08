part of 'login_bloc.dart';

/// ## 로그인 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.userChanged(User? user) = _UserChanged;

  const factory LoginEvent.userInfoMissing() = _UserInfoMissing;

  const factory LoginEvent.loginSucceeded() = _LogginSucceeded;
}
