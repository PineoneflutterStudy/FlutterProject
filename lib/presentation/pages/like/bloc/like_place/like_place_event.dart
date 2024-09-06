part of 'like_place_bloc.dart';

@freezed
class LikePlaceEvent with _$LikePlaceEvent {
  const factory LikePlaceEvent.started() = _Started;
  const factory LikePlaceEvent.delete(String index) = _Delete;
}
