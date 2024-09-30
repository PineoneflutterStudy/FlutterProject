part of 'user_bloc.dart';

/// ## 마이페이지 화면 state
///
/// author [Eogeum@naver.com]
@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;

  const factory UserState.loading() = _Loading;

  const factory UserState.loggedIn(User currentUser) = _LoggedIn;

  const factory UserState.loggedOut() = _LoggedOut;

  const factory UserState.error() = _Error;
}
