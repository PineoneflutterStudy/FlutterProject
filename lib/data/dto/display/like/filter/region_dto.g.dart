// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionDtoImpl _$$RegionDtoImplFromJson(Map<String, dynamic> json) =>
    _$RegionDtoImpl(
      id: json['id'] as String?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegionDtoImplToJson(_$RegionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      y_coor: json['y_coor'] as String?,
      full_addr: json['full_addr'] as String?,
      x_coor: json['x_coor'] as String?,
      addr_name: json['addr_name'] as String?,
      cd: json['cd'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'y_coor': instance.y_coor,
      'full_addr': instance.full_addr,
      'x_coor': instance.x_coor,
      'addr_name': instance.addr_name,
      'cd': instance.cd,
    };
