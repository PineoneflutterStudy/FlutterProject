import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_dto.freezed.dart';
part 'region_dto.g.dart';

@freezed
class RegionDto with _$RegionDto {
  const factory RegionDto ({
    required String? id,
    required List<ResultDto>? result,
    required String errMsg,
    required int errCd,
    required String trId,
  }) = _RegionDto;

  factory RegionDto.fromJson(Map<String, dynamic> json) =>
      _$RegionDtoFromJson(json);
}

@freezed
class ResultDto with _$ResultDto {
  const factory ResultDto ({
    required String? y_coor,
    required String? full_addr,
    required String? x_coor,
    required String? addr_name,
    required String? cd,
  }) = _ResultDto;



  factory ResultDto.fromJson(Map<String, dynamic> json) => _$ResultDtoFromJson(json);
}