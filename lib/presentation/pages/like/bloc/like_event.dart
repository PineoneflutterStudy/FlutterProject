part of 'like_bloc.dart';

@freezed
class LikeEvent with _$LikeEvent {
  const factory LikeEvent.checkLoginState() = _CheckLoginState;
}
