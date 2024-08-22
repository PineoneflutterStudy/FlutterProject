// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenDtoImpl _$$AccessTokenDtoImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenDtoImpl(
      id: json['id'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
      errMsg: json['errMsg'] as String?,
      errCd: (json['errCd'] as num?)?.toInt(),
      trErr: json['trErr'] as String?,
    );

Map<String, dynamic> _$$AccessTokenDtoImplToJson(
        _$AccessTokenDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
      'errMsg': instance.errMsg,
      'errCd': instance.errCd,
      'trErr': instance.trErr,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      accessTimeout: json['accessTimeout'] as String?,
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'accessTimeout': instance.accessTimeout,
      'accessToken': instance.accessToken,
    };
