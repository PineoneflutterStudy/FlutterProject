part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  const factory UserState.loggedIn(User currentUser) = _LoggedIn;

  const factory UserState.loggedOut() = _LoggedOut;

  const factory UserState.error() = _Error;
}
