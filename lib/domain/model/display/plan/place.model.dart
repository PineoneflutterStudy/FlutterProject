import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.model.freezed.dart';
part 'place.model.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required String placeId,
    required String placeName,
    required String categoryName,
    required String phone,
    required String addressName,
    required String roadAddressName,
    required String x,
    required String y,
    required String placeUrl,
    required String distance,
    required String walkTravelTime,
    required String carTravelTime,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) =>
      _$PlaceFromJson(json);

}