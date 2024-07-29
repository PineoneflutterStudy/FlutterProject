// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourResponseWrapperImpl _$$TourResponseWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$TourResponseWrapperImpl(
      List: json['List'] ?? const [],
      numOfRows: json['numOfRows'] ?? '0',
      pageNo: json['pageNo'] ?? '0',
      totalCount: json['totalCount'] ?? '0',
    );

Map<String, dynamic> _$$TourResponseWrapperImplToJson(
        _$TourResponseWrapperImpl instance) =>
    <String, dynamic>{
      'List': instance.List,
      'numOfRows': instance.numOfRows,
      'pageNo': instance.pageNo,
      'totalCount': instance.totalCount,
    };
