import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_dto.freezed.dart';
part 'region_dto.g.dart';

@freezed
class RegionDto with _$RegionDto {
  const factory RegionDto ({
    required String? id,
    required List<Result>? result,
  }) = _RegionDto;

  factory RegionDto.fromJson(Map<String, dynamic> json) =>
      _$RegionDtoFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result ({
    required String? y_coor,
    required String? full_addr,
    required String? x_coor,
    required String? addr_name,
    required String? cd,
  }) = _Result;



  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}