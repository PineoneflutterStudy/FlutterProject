// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      address_name: json['address_name'] as String,
      address_type: json['address_type'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      address: json['address'] == null
          ? null
          : AddressInfo.fromJson(json['address'] as Map<String, dynamic>),
      road_address: json['road_address'] == null
          ? null
          : RoadAddressInfo.fromJson(
              json['road_address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'address_type': instance.address_type,
      'x': instance.x,
      'y': instance.y,
      'address': instance.address,
      'road_address': instance.road_address,
    };

_$AddressInfoImpl _$$AddressInfoImplFromJson(Map<String, dynamic> json) =>
    _$AddressInfoImpl(
      address_name: json['address_name'] as String,
      region_1depth_name: json['region_1depth_name'] as String,
      region_2depth_name: json['region_2depth_name'] as String,
      region_3depth_name: json['region_3depth_name'] as String,
      region_3depth_h_name: json['region_3depth_h_name'] as String,
      h_code: json['h_code'] as String,
      b_code: json['b_code'] as String,
      mountain_yn: json['mountain_yn'] as String,
      main_address_no: json['main_address_no'] as String,
      sub_address_no: json['sub_address_no'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$AddressInfoImplToJson(_$AddressInfoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'region_3depth_h_name': instance.region_3depth_h_name,
      'h_code': instance.h_code,
      'b_code': instance.b_code,
      'mountain_yn': instance.mountain_yn,
      'main_address_no': instance.main_address_no,
      'sub_address_no': instance.sub_address_no,
      'x': instance.x,
      'y': instance.y,
    };

_$RoadAddressInfoImpl _$$RoadAddressInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$RoadAddressInfoImpl(
      address_name: json['address_name'] as String,
      region_1depth_name: json['region_1depth_name'] as String,
      region_2depth_name: json['region_2depth_name'] as String,
      region_3depth_name: json['region_3depth_name'] as String,
      road_name: json['road_name'] as String,
      underground_yn: json['underground_yn'] as String,
      main_building_no: json['main_building_no'] as String,
      sub_building_no: json['sub_building_no'] as String,
      building_name: json['building_name'] as String,
      zone_no: json['zone_no'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$RoadAddressInfoImplToJson(
        _$RoadAddressInfoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'region_1depth_name': instance.region_1depth_name,
      'region_2depth_name': instance.region_2depth_name,
      'region_3depth_name': instance.region_3depth_name,
      'road_name': instance.road_name,
      'underground_yn': instance.underground_yn,
      'main_building_no': instance.main_building_no,
      'sub_building_no': instance.sub_building_no,
      'building_name': instance.building_name,
      'zone_no': instance.zone_no,
      'x': instance.x,
      'y': instance.y,
    };
