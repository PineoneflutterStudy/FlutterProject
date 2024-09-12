part of 'like_place_bloc.dart';

@freezed
class LikePlaceEvent with _$LikePlaceEvent {
  const factory LikePlaceEvent.started() = _Started;
  const factory LikePlaceEvent.delete(String index) = _Delete;
  const factory LikePlaceEvent.region(String region) = _Region;
  const factory LikePlaceEvent.category(String category) = _Category;
}
