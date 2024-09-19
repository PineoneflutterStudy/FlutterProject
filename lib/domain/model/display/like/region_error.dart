import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_error.freezed.dart';
part 'region_error.g.dart';

@freezed
class RegionErrorModel with _$RegionErrorModel {
  const factory RegionErrorModel ({
    required String errMsg,
    required int errCd,
  }) = _RegionErrorModel;



  factory RegionErrorModel.fromJson(Map<String, dynamic> json) => _$RegionErrorModelFromJson(json);
}