part of 'email_bloc.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState.initial() = _Initial;

  const factory EmailState.validationFailed(bool isEmailEmpty, bool isEmailInvalid, bool isPasswordEmpty) = _ValidationFailed;

  const factory EmailState.userNotFound() = _UserNotFound;

  const factory EmailState.wrongPassword() = _WrongPassword;

  const factory EmailState.loggedIn() = _LoggedIn;

  const factory EmailState.error() = _Error;
}
