import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.dto.freezed.dart';
part 'place.dto.g.dart';

@freezed
class PlaceDto with _$PlaceDto {
  const factory PlaceDto({
    required String address_name,
    required String category_group_code,
    required String category_group_name,
    required String category_name,
    required String distance,
    required String id,
    required String phone,
    required String place_name,
    required String place_url,
    required String road_address_name,
    required String x,
    required String y,
  }) = _PlaceDto;

  factory PlaceDto.fromJson(Map<String, dynamic> json) => _$PlaceDtoFromJson(json);
}
