part of 'place_bloc.dart';

abstract class PlaceEvent {
  const PlaceEvent();
}

class PlaceInitialized extends PlaceEvent {
  final String? search;
  final String? category;
  final String? x;
  final String? y;
  final int? radius;
  final int? page;
  final String? sort;

  PlaceInitialized(this.search, this.category, this.x, this.y, this.radius,
      this.page, this.sort);
}
