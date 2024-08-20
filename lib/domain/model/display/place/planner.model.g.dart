// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planner.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlannerImpl _$$PlannerImplFromJson(Map<String, dynamic> json) =>
    _$PlannerImpl(
      planner_id: json['planner_id'] as String,
      planner_title: json['planner_title'] as String? ?? 'plan',
      planner_item_list: (json['planner_item_list'] as List<dynamic>?)
              ?.map((e) => PlannerItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      destination: json['destination'] == null
          ? null
          : Address.fromJson(json['destination'] as Map<String, dynamic>),
      arrivalTime: json['arrivalTime'] as String? ?? '10:00',
    );

Map<String, dynamic> _$$PlannerImplToJson(_$PlannerImpl instance) =>
    <String, dynamic>{
      'planner_id': instance.planner_id,
      'planner_title': instance.planner_title,
      'planner_item_list':
          instance.planner_item_list.map((e) => e.toJson()).toList(),
      'destination': instance.destination?.toJson(),
      'arrivalTime': instance.arrivalTime,
    };

_$PlannerItemImpl _$$PlannerItemImplFromJson(Map<String, dynamic> json) =>
    _$PlannerItemImpl(
      place_name: json['place_name'] as String,
      place_id: json['place_id'] as String,
      prev_place_id: json['prev_place_id'] as String,
      stay_time: json['stay_time'] as String,
      start_time: json['start_time'] as String,
      end_time: json['end_time'] as String,
      distance: json['distance'] as String,
      transportation: json['transportation'] as String,
      travel_time: json['travel_time'] as String,
    );

Map<String, dynamic> _$$PlannerItemImplToJson(_$PlannerItemImpl instance) =>
    <String, dynamic>{
      'place_name': instance.place_name,
      'place_id': instance.place_id,
      'prev_place_id': instance.prev_place_id,
      'stay_time': instance.stay_time,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'distance': instance.distance,
      'transportation': instance.transportation,
      'travel_time': instance.travel_time,
    };
