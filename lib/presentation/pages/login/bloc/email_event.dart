part of 'email_bloc.dart';

@freezed
class EmailEvent with _$EmailEvent {
  const factory EmailEvent.started() = _Started;

  const factory EmailEvent.emailSubmitted(String email) = _EmailSubmitted;

  const factory EmailEvent.passwordSubmitted(String password) = _PasswordSubmitted;
}
