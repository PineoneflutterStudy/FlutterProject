// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_select.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionSelectModelImpl _$$RegionSelectModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionSelectModelImpl(
      major: json['major'] as String,
      middle: json['middle'] as String,
      minor: json['minor'] as String,
      current: (json['current'] as num).toInt(),
    );

Map<String, dynamic> _$$RegionSelectModelImplToJson(
        _$RegionSelectModelImpl instance) =>
    <String, dynamic>{
      'major': instance.major,
      'middle': instance.middle,
      'minor': instance.minor,
      'current': instance.current,
    };
