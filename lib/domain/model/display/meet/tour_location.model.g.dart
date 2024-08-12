// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_location.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourLocationModelImpl _$$TourLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TourLocationModelImpl(
      addr1: json['addr1'] as String,
      addr2: json['addr2'] as String,
      areacode: json['areacode'] as String,
      createdtime: json['createdtime'] as String,
      mapx: json['mapx'] as String,
      mapy: json['mapy'] as String,
      mlevel: json['mlevel'] as String,
      sigungucode: json['sigungucode'] as String,
      tel: json['tel'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$TourLocationModelImplToJson(
        _$TourLocationModelImpl instance) =>
    <String, dynamic>{
      'addr1': instance.addr1,
      'addr2': instance.addr2,
      'areacode': instance.areacode,
      'createdtime': instance.createdtime,
      'mapx': instance.mapx,
      'mapy': instance.mapy,
      'mlevel': instance.mlevel,
      'sigungucode': instance.sigungucode,
      'tel': instance.tel,
      'title': instance.title,
    };
