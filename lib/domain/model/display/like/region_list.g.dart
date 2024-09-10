// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionListModelImpl _$$RegionListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionListModelImpl(
      addrList: (json['addrList'] as List<dynamic>)
          .map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegionListModelImplToJson(
        _$RegionListModelImpl instance) =>
    <String, dynamic>{
      'addrList': instance.addrList,
    };
