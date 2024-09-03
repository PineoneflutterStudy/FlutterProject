part of 'email_bloc.dart';

@freezed
class EmailEvent with _$EmailEvent {
  const factory EmailEvent.started() = _Started;

  const factory EmailEvent.loginButtonPressed(String email, String password) = _LoginButtonPressed;
}
