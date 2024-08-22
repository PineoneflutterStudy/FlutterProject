part of 'login_bloc.dart';

/// ## 로그인 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;

  const factory LoginEvent.loginOptionItemPressed(AuthType authType) = _LoginOptionItemPressed;

  const factory LoginEvent.emailDuplicated(String email, String providers) = _EmailDuplicated;

  const factory LoginEvent.userChanged(User? user) = _UserChanged;

  const factory LoginEvent.userInfoMissing() = _UserInfoMissing;

  const factory LoginEvent.errorOccurred() = _ErrorOccurred;
}
