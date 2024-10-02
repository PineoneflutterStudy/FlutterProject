part of 'place_bloc.dart';

@freezed
class PlaceEvent with _$PlaceEvent {
  const factory PlaceEvent.search(String search, String category, {@Default(1) int page}) = PlaceSearched;
  const factory PlaceEvent.searchXY(String search, String? category, Address address, {@Default('') String prevPlaceId, @Default(1) int page}) = PlaceSearchedXY;
}