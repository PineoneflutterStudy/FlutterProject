import 'package:flutter_project_team1/domain/model/display/like/region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'region_list.freezed.dart';
part 'region_list.g.dart';

@freezed
class RegionListModel with _$RegionListModel {
  const factory RegionListModel({
    required List<RegionModel> addrList,
  }) = _RegionListModel;

  factory RegionListModel.fromJson(Map<String, dynamic> json) =>
      _$RegionListModelFromJson(json);
}