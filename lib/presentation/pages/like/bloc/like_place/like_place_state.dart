part of 'like_place_bloc.dart';

@freezed
class LikePlaceState with _$LikePlaceState {
  const factory LikePlaceState.initial() = _Initial;
  const factory LikePlaceState.loading() = _Loading;
  const factory LikePlaceState.success(LikeState state, List<Place> placeList, String ctgrId) = _Success;
  const factory LikePlaceState.empty(LikeState state, String ctgrId) = _Empty;
  const factory LikePlaceState.error() = _Error;
  const factory LikePlaceState.delete() = _onDelete;
}
