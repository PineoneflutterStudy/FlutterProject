// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_db.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerDbModelImpl _$$BannerDbModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerDbModelImpl(
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) =>
                  BannerContentDbModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$BannerDbModelImplToJson(_$BannerDbModelImpl instance) =>
    <String, dynamic>{
      'contents': instance.contents,
    };
