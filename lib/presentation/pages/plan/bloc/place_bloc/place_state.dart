part of 'place_bloc.dart';

@freezed
class PlaceState with _$PlaceState {
  factory PlaceState({
    @Default(Status.initial) Status status,
    @Default(<Place>[]) List<Place> places,
    ErrorResponse? error,
  }) = _PlaceState;
}