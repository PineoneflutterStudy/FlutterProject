part of 'email_bloc.dart';

/// ## 이메일 로그인 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class EmailEvent with _$EmailEvent {
  const factory EmailEvent.started() = _Started;

  const factory EmailEvent.emailSubmitted(String email) = _EmailSubmitted;

  const factory EmailEvent.passwordSubmitted(String password) = _PasswordSubmitted;

  const factory EmailEvent.signUpSubmitted(String password) = _SignUpSubmitted;
}
