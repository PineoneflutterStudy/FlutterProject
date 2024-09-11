part of 'place_bloc.dart';

@freezed
class PlaceEvent with _$PlaceEvent {
  const factory PlaceEvent.search(String search, String category) = PlaceSearched;
  const factory PlaceEvent.searchXY(String search, String? category, Address address, int? page) = PlaceSearchedXY;
}