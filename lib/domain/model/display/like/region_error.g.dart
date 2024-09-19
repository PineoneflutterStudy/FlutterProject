// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionErrorModelImpl _$$RegionErrorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionErrorModelImpl(
      errMsg: json['errMsg'] as String,
      errCd: (json['errCd'] as num).toInt(),
    );

Map<String, dynamic> _$$RegionErrorModelImplToJson(
        _$RegionErrorModelImpl instance) =>
    <String, dynamic>{
      'errMsg': instance.errMsg,
      'errCd': instance.errCd,
    };
