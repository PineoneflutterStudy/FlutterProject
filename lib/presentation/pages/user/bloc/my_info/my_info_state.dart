part of 'my_info_bloc.dart';

/// ## 내 정보 화면 state
///
/// author [Eogeum@naver.com]
@freezed
class MyInfoState with _$MyInfoState {
  const factory MyInfoState.initial() = _Initial;

  const factory MyInfoState.loggedOut() = _LoggedOut;
}
