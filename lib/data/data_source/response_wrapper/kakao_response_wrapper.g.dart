// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KakaoResponseWrapperImpl<T> _$$KakaoResponseWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$KakaoResponseWrapperImpl<T>(
      documents:
          (json['documents'] as List<dynamic>?)?.map(fromJsonT).toList() ??
              const [],
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KakaoResponseWrapperImplToJson<T>(
  _$KakaoResponseWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'documents': instance.documents.map(toJsonT).toList(),
      'meta': instance.meta,
    };

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
      is_end: json['is_end'] as bool,
      pageable_count: (json['pageable_count'] as num).toInt(),
      same_name: json['same_name'] == null
          ? null
          : SameName.fromJson(json['same_name'] as Map<String, dynamic>),
      total_count: (json['total_count'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'is_end': instance.is_end,
      'pageable_count': instance.pageable_count,
      'same_name': instance.same_name,
      'total_count': instance.total_count,
    };

_$SameNameImpl _$$SameNameImplFromJson(Map<String, dynamic> json) =>
    _$SameNameImpl(
      keyword: json['keyword'] as String,
      region:
          (json['region'] as List<dynamic>).map((e) => e as String).toList(),
      selected_region: json['selected_region'] as String,
    );

Map<String, dynamic> _$$SameNameImplToJson(_$SameNameImpl instance) =>
    <String, dynamic>{
      'keyword': instance.keyword,
      'region': instance.region,
      'selected_region': instance.selected_region,
    };
