part of 'login_bloc.dart';

/// ## 로그인 화면 state
///
/// author [Eogeum@naver.com]
@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.alreadyLoggedIn() = _AlreadyLoggedIn;

  const factory LoginState.emailDuplicateError(String email) = _EmailDuplicateError;

  const factory LoginState.requireMoreUserInfo() = _RequireMoreUserInfo;

  const factory LoginState.navigateToEmailLogin() = _NavigateToEmailLogin;

  const factory LoginState.loggedIn() = _LoggedIn;

  const factory LoginState.error() = _Error;
}
