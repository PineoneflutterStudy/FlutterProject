// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      addressName: json['addressName'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      radius: (json['radius'] as num?)?.toInt(),
      sort: json['sort'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'addressName': instance.addressName,
      'x': instance.x,
      'y': instance.y,
      'radius': instance.radius,
      'sort': instance.sort,
    };
