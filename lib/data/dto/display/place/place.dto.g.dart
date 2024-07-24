// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceDtoImpl _$$PlaceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlaceDtoImpl(
      address_name: json['address_name'] as String,
      category_group_code: json['category_group_code'] as String,
      category_group_name: json['category_group_name'] as String,
      category_name: json['category_name'] as String,
      distance: json['distance'] as String,
      id: json['id'] as String,
      phone: json['phone'] as String,
      place_name: json['place_name'] as String,
      place_url: json['place_url'] as String,
      road_address_name: json['road_address_name'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
    );

Map<String, dynamic> _$$PlaceDtoImplToJson(_$PlaceDtoImpl instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'category_group_code': instance.category_group_code,
      'category_group_name': instance.category_group_name,
      'category_name': instance.category_name,
      'distance': instance.distance,
      'id': instance.id,
      'phone': instance.phone,
      'place_name': instance.place_name,
      'place_url': instance.place_url,
      'road_address_name': instance.road_address_name,
      'x': instance.x,
      'y': instance.y,
    };
