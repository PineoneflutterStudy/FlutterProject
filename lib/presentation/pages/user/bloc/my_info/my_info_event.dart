part of 'my_info_bloc.dart';

/// ## 내 정보 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class MyInfoEvent with _$MyInfoEvent {
  const factory MyInfoEvent.started() = _Started;
}
