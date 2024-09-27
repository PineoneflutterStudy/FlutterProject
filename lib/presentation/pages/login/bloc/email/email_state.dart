part of 'email_bloc.dart';

/// ## 이메일 로그인 화면 state
///
/// author [Eogeum@naver.com]
@freezed
class EmailState with _$EmailState {
  const factory EmailState.initial() = _Initial;

  const factory EmailState.emailDuplicated(String email) = _EmailDuplicated;

  const factory EmailState.navigateToPage(Pages page) = _NavigateToPage;

  const factory EmailState.wrongPassword() = _WrongPassword;

  const factory EmailState.loggedIn() = _LoggedIn;

  const factory EmailState.error() = _Error;
}
