// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceImpl _$$PlaceImplFromJson(Map<String, dynamic> json) => _$PlaceImpl(
      placeName: json['placeName'] as String,
      categoryName: json['categoryName'] as String,
      phone: json['phone'] as String,
      addressName: json['addressName'] as String,
      roadAddressName: json['roadAddressName'] as String,
      x: json['x'] as String,
      y: json['y'] as String,
      placeUrl: json['placeUrl'] as String,
      distance: json['distance'] as String,
    );

Map<String, dynamic> _$$PlaceImplToJson(_$PlaceImpl instance) =>
    <String, dynamic>{
      'placeName': instance.placeName,
      'categoryName': instance.categoryName,
      'phone': instance.phone,
      'addressName': instance.addressName,
      'roadAddressName': instance.roadAddressName,
      'x': instance.x,
      'y': instance.y,
      'placeUrl': instance.placeUrl,
      'distance': instance.distance,
    };