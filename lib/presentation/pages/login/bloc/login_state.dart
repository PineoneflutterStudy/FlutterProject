part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.alreadyLoggedIn() = _AlreadyLoggedIn;

  const factory LoginState.requireMoreUserInfo() = _RequireMoreUserInfo;

  const factory LoginState.loggedIn() = _LoggedIn;
}
