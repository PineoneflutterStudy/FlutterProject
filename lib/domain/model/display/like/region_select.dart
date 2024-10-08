import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_select.freezed.dart';
part 'region_select.g.dart';

@freezed
class RegionSelectModel with _$RegionSelectModel {
  const factory RegionSelectModel({
    required String major,
    required String middle,
    required String minor,
    required int current,
  }) = _RegionSelectModel;



  factory RegionSelectModel.fromJson(Map<String, dynamic> json) =>
      _$RegionSelectModelFromJson(json);
}