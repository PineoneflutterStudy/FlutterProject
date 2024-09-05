part of 'like_place_bloc.dart';

@freezed
class LikePlaceState with _$LikePlaceState {
  const factory LikePlaceState.initial() = _Initial;
  const factory LikePlaceState.loading() = _Loading;
  const factory LikePlaceState.success(List<Place> placeList) = _Success;
  const factory LikePlaceState.empty() = _Empty;
  const factory LikePlaceState.error() = _Error;

}
