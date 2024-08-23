// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobility_directions.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobilityDirectionsDtoImpl _$$MobilityDirectionsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MobilityDirectionsDtoImpl(
      name: json['name'] as String,
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      traffic_speed: (json['traffic_speed'] as num).toDouble(),
      traffic_state: (json['traffic_state'] as num).toInt(),
      vertexes: (json['vertexes'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$MobilityDirectionsDtoImplToJson(
        _$MobilityDirectionsDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'distance': instance.distance,
      'duration': instance.duration,
      'traffic_speed': instance.traffic_speed,
      'traffic_state': instance.traffic_state,
      'vertexes': instance.vertexes,
    };
