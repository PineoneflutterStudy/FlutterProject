// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meet_marker.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetMarkerModelImpl _$$MeetMarkerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetMarkerModelImpl(
      imagePath: json['imagePath'] as String,
      loadColorValue: (json['loadColorValue'] as num).toInt(),
    );

Map<String, dynamic> _$$MeetMarkerModelImplToJson(
        _$MeetMarkerModelImpl instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'loadColorValue': instance.loadColorValue,
    };
