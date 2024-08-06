// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobility.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobilityDtoImpl _$$MobilityDtoImplFromJson(Map<String, dynamic> json) =>
    _$MobilityDtoImpl(
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      longitudePaths: json['longitudePaths'] as String,
      latitudePaths: json['latitudePaths'] as String,
    );

Map<String, dynamic> _$$MobilityDtoImplToJson(_$MobilityDtoImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'longitudePaths': instance.longitudePaths,
      'latitudePaths': instance.latitudePaths,
    };
