// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordinatesModelImpl _$$CoordinatesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordinatesModelImpl(
      startLongitude: json['startLongitude'] as String,
      startLatitude: json['startLatitude'] as String,
      endLongitude: json['endLongitude'] as String,
      endLatitude: json['endLatitude'] as String,
    );

Map<String, dynamic> _$$CoordinatesModelImplToJson(
        _$CoordinatesModelImpl instance) =>
    <String, dynamic>{
      'startLongitude': instance.startLongitude,
      'startLatitude': instance.startLatitude,
      'endLongitude': instance.endLongitude,
      'endLatitude': instance.endLatitude,
    };
