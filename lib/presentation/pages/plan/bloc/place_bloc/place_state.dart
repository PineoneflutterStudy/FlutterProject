part of 'place_bloc.dart';

@freezed
class PlaceState with _$PlaceState {
  const factory PlaceState.loading() = PlaceLoading;
  const factory PlaceState.success(List<Place> places) = PlaceSuccess;
  const factory PlaceState.empty() = PlaceEmpty;
  const factory PlaceState.error(ErrorResponse error) = PlaceError;
}