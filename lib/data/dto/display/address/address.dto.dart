import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.dto.freezed.dart';
part 'address.dto.g.dart';

@freezed
class AddressDto with _$AddressDto {
  const factory AddressDto({
    required String address_name,
    required String address_type,
    required String x,
    required String y,
    required AddressInfo? address,
    required RoadAddressInfo? road_address,
  }) = _AddressDto;



  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);
}

@freezed
class AddressInfo with _$AddressInfo {
  const factory AddressInfo({
    required String address_name,
    required String region_1depth_name,
    required String region_2depth_name,
    required String region_3depth_name,
    required String region_3depth_h_name,
    required String h_code,
    required String b_code,
    required String mountain_yn,
    required String main_address_no,
    required String sub_address_no,
    required String x,
    required String y,
  }) = _AddressInfo;



  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);
}

@freezed
class RoadAddressInfo with _$RoadAddressInfo {
  const factory RoadAddressInfo({
    required String address_name,
    required String region_1depth_name,
    required String region_2depth_name,
    required String region_3depth_name,
    required String road_name,
    required String underground_yn,
    required String main_building_no,
    required String sub_building_no,
    required String building_name,
    required String zone_no,
    required String x,
    required String y,
  }) = _RoadAddressInfo;



  factory RoadAddressInfo.fromJson(Map<String, dynamic> json) =>
      _$RoadAddressInfoFromJson(json);
}