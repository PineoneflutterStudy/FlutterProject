// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_service_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourServiceResponseWrapperImpl<T>
    _$$TourServiceResponseWrapperImplFromJson<T>(Map<String, dynamic> json) =>
        _$TourServiceResponseWrapperImpl<T>(
          response: json['response'] == null
              ? null
              : Response.fromJson(json['response'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TourServiceResponseWrapperImplToJson<T>(
        _$TourServiceResponseWrapperImpl<T> instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$ResponseImpl _$$ResponseImplFromJson(Map<String, dynamic> json) =>
    _$ResponseImpl(
      header: json['header'] == null
          ? null
          : Header.fromJson(json['header'] as Map<String, dynamic>),
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseImplToJson(_$ResponseImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
      'body': instance.body,
    };

_$HeaderImpl _$$HeaderImplFromJson(Map<String, dynamic> json) => _$HeaderImpl(
      resultCode: json['resultCode'] as String,
      resultMsg: json['resultMsg'] as String,
    );

Map<String, dynamic> _$$HeaderImplToJson(_$HeaderImpl instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMsg': instance.resultMsg,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
  items: json['items'] != null && json['items'] != ''
      ? Items.fromJson(json['items'] as Map<String, dynamic>)
      : null,
      numOfRows: (json['numOfRows'] as num).toInt(),
      pageNo: (json['pageNo'] as num).toInt(),
      totalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'numOfRows': instance.numOfRows,
      'pageNo': instance.pageNo,
      'totalCount': instance.totalCount,
    };

_$ItemsImpl _$$ItemsImplFromJson(Map<String, dynamic> json) => _$ItemsImpl(
      item: json['item'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ItemsImplToJson(_$ItemsImpl instance) =>
    <String, dynamic>{
      'item': instance.item,
    };
