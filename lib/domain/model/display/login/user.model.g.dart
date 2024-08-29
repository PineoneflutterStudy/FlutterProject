// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      providers:
          (json['providers'] as List<dynamic>).map((e) => e as String).toList(),
      photoUrl: json['photoUrl'] as String?,
      creationTime: const TimestampSerializer().fromJson(json['creationTime']),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'providers': instance.providers,
      'photoUrl': instance.photoUrl,
      'creationTime': _$JsonConverterToJson<dynamic, DateTime>(
          instance.creationTime, const TimestampSerializer().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
