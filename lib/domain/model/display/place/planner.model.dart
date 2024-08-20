import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.model.dart';

part 'planner.model.freezed.dart';
part 'planner.model.g.dart';

@freezed
class Planner with _$Planner {
  @JsonSerializable(explicitToJson: true)
  const factory Planner({
    required String planner_id,
    @Default('plan') String planner_title,
    @Default([]) List<PlannerItem> planner_item_list,
    Address? destination,
    @Default('10:00') String arrivalTime,
  }) = _Planner;

  factory Planner.fromJson(Map<String, dynamic> json) => _$PlannerFromJson(json);
}

@freezed
class PlannerItem with _$PlannerItem {
  const factory PlannerItem({
    required String place_name,
    required String place_id,
    required String prev_place_id,
    required String stay_time, // 머무는 시간
    required String start_time,
    required String end_time,
    required String distance, // 이전장소와의 거리
    required String transportation, //이동수단
    required String travel_time // 이동시간

  }) = _PlannerItem;

  factory PlannerItem.fromJson(Map<String, dynamic> json) => _$PlannerItemFromJson(json);
}