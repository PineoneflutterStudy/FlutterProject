// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_directions.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetDirectionsModelImpl _$$MeetDirectionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetDirectionsModelImpl(
      distance: (json['distance'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      longitudePaths: json['longitudePaths'] as String,
      latitudePaths: json['latitudePaths'] as String,
    );

Map<String, dynamic> _$$MeetDirectionsModelImplToJson(
        _$MeetDirectionsModelImpl instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'longitudePaths': instance.longitudePaths,
      'latitudePaths': instance.latitudePaths,
    };
