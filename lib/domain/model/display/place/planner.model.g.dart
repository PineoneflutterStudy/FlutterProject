// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planner.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlannerImpl _$$PlannerImplFromJson(Map<String, dynamic> json) =>
    _$PlannerImpl(
      planner_id: json['planner_id'] as String,
      planner_title: json['planner_title'] as String? ?? 'plan',
      planner_page_list: (json['planner_page_list'] as List<dynamic>?)
              ?.map((e) => PlannerPage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlannerImplToJson(_$PlannerImpl instance) =>
    <String, dynamic>{
      'planner_id': instance.planner_id,
      'planner_title': instance.planner_title,
      'planner_page_list':
          instance.planner_page_list.map((e) => e.toJson()).toList(),
    };

_$PlannerPageImpl _$$PlannerPageImplFromJson(Map<String, dynamic> json) =>
    _$PlannerPageImpl(
      planner_title: json['planner_title'] as String? ?? 'plan',
      page_item_list: (json['page_item_list'] as List<dynamic>?)
              ?.map((e) => PlannerItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlannerPageImplToJson(_$PlannerPageImpl instance) =>
    <String, dynamic>{
      'planner_title': instance.planner_title,
      'page_item_list': instance.page_item_list.map((e) => e.toJson()).toList(),
    };

_$PlannerItemImpl _$$PlannerItemImplFromJson(Map<String, dynamic> json) =>
    _$PlannerItemImpl(
      cur_address_info:
          Address.fromJson(json['cur_address_info'] as Map<String, dynamic>),
      place_name: json['place_name'] as String,
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String,
      stay_time: json['stay_time'] as String?,
      prev_address_info: json['prev_address_info'] == null
          ? null
          : Address.fromJson(json['prev_address_info'] as Map<String, dynamic>),
      prev_place_id: json['prev_place_id'] as String?,
      distance: json['distance'] as String?,
      transportation: json['transportation'] as String?,
      travel_time: json['travel_time'] as String?,
    );

Map<String, dynamic> _$$PlannerItemImplToJson(_$PlannerItemImpl instance) =>
    <String, dynamic>{
      'cur_address_info': instance.cur_address_info.toJson(),
      'place_name': instance.place_name,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'stay_time': instance.stay_time,
      'prev_address_info': instance.prev_address_info?.toJson(),
      'prev_place_id': instance.prev_place_id,
      'distance': instance.distance,
      'transportation': instance.transportation,
      'travel_time': instance.travel_time,
    };
