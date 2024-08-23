import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    @Default([]) List<PlannerPage> planner_page_list,
  }) = _Planner;

  factory Planner.fromJson(Map<String, dynamic> json) => _$PlannerFromJson(json);
}

@freezed
class PlannerPage with _$PlannerPage {
  @JsonSerializable(explicitToJson: true)
  const factory PlannerPage({
    @Default('plan') String planner_title,
    @Default([]) List<PlannerItem> page_item_list,
  }) = _PlannerPage;



  factory PlannerPage.fromJson(Map<String, dynamic> json) => _$PlannerPageFromJson(json);
}

@freezed
class PlannerItem with _$PlannerItem {
  @JsonSerializable(explicitToJson: true)
  const factory PlannerItem({
    required Address cur_address_info,
    required String place_name,
    String? start_time,
    required String end_time,
    String? stay_time, // 이용시간
    Address? prev_address_info,
    String? prev_place_id,
    String? distance, // 이전장소와의 거리
    String? transportation, //이동수단
    String? travel_time // 이동시간
  }) = _PlannerItem;

  factory PlannerItem.fromJson(Map<String, dynamic> json) => _$PlannerItemFromJson(json);
}