part of 'my_info_bloc.dart';

/// ## 내 정보 화면 state
///
/// author [Eogeum@naver.com]
@freezed
class MyInfoState with _$MyInfoState {
  const factory MyInfoState.initial() = _Initial;

  const factory MyInfoState.loading() = _Loading;

  const factory MyInfoState.updated(User user) = _Updated;

  const factory MyInfoState.loggedOut() = _LoggedOut;

  const factory MyInfoState.error(String errorMessage) = _Error;
}
