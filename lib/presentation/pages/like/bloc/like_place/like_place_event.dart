part of 'like_place_bloc.dart';

@freezed
class LikePlaceEvent with _$LikePlaceEvent {
  const factory LikePlaceEvent.started(String ctgrId) = _Started;
  const factory LikePlaceEvent.delete(String index, bool isFilter) = _Delete;
  const factory LikePlaceEvent.region(String region) = _Region;
}
