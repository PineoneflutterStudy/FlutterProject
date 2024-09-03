// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegionListModelImpl _$$RegionListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegionListModelImpl(
      currentAddr: (json['currentAddr'] as List<dynamic>?)
          ?.map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      newAddr: (json['newAddr'] as List<dynamic>)
          .map((e) => RegionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedIdx: (json['selectedIdx'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RegionListModelImplToJson(
        _$RegionListModelImpl instance) =>
    <String, dynamic>{
      'currentAddr': instance.currentAddr,
      'newAddr': instance.newAddr,
      'selectedIdx': instance.selectedIdx,
    };
