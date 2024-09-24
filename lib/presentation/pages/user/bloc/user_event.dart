part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;

  const factory UserEvent.logoutRequested() = _LogoutRequested;

  const factory UserEvent.errorOccurred() = _ErrorOccurred;
}
