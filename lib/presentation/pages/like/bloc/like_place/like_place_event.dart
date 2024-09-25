part of 'like_place_bloc.dart';

@freezed
class LikePlaceEvent with _$LikePlaceEvent {
  const factory LikePlaceEvent.update(Category category) = _onUpdate;
  const factory LikePlaceEvent.failed() = _onFailed;
  const factory LikePlaceEvent.region(Category category, String regionName) = _Region;
  const factory LikePlaceEvent.delete(String index, Category category, String regionName) = _Delete;
  const factory LikePlaceEvent.deleteAll(Category? category, String regionName) = _AllDelete;
}
