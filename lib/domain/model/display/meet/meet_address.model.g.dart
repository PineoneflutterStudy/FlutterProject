// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_address.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetAddressModelImpl _$$MeetAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetAddressModelImpl(
      index: (json['index'] as num).toInt(),
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      totalDistance: (json['totalDistance'] as num).toInt(),
      totalDuration: (json['totalDuration'] as num).toInt(),
    );

Map<String, dynamic> _$$MeetAddressModelImplToJson(
        _$MeetAddressModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'totalDistance': instance.totalDistance,
      'totalDuration': instance.totalDuration,
    };
