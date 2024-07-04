// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      ctgrName: json['ctgrName'] as String? ?? '',
      ctgrId: (json['ctgrId'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'ctgrName': instance.ctgrName,
      'ctgrId': instance.ctgrId,
    };
