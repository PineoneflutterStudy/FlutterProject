part of 'login_check_bloc.dart';

@freezed
class LoginCheckState with _$LoginCheckState {

  const factory LoginCheckState.loading() = _Loading;
  const factory LoginCheckState.loggedIn() = _loggedIn;
  const factory LoginCheckState.loggedOut() = _loggedOut;
  const factory LoginCheckState.error() = _Error;
}
