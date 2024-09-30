part of 'my_info_bloc.dart';

/// ## 내 정보 화면 event
///
/// author [Eogeum@naver.com]
@freezed
class MyInfoEvent with _$MyInfoEvent {
  const factory MyInfoEvent.started(User user) = _Started;

  const factory MyInfoEvent.userUpdated(User user) = _UserUpdated;

  const factory MyInfoEvent.profileImageEditOptionSelected(
    ProfileImageEditOption option,
    File? imageFile,
  ) = _ProfileImageEditOptionSelected;

  const factory MyInfoEvent.logoutRequested() = _LogoutRequested;
}
