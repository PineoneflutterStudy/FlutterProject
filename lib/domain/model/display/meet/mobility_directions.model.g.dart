// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobility_directions.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobilityDirectionsModelImpl _$$MobilityDirectionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MobilityDirectionsModelImpl(
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      vertexes: json['vertexes'] as List<dynamic>,
    );

Map<String, dynamic> _$$MobilityDirectionsModelImplToJson(
        _$MobilityDirectionsModelImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'vertexes': instance.vertexes,
    };
