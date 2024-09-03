import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class RegionModel with _$RegionModel {
  const factory RegionModel ({
    required String cd,
    required String addr,
  }) = _RegionModel;



  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);
}