import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.dto.freezed.dart';
part 'tour.dto.g.dart';

@freezed
class TourDto with _$TourDto {
  const factory TourDto({
    required String addr1,
    required String addr2,
    required String cat2,
    required String cat3,
    required String contentid,
    required String contenttypeid,
    required String createdtime,
    required String dist,
    required String firstimage,
    required String firstimage2,
    required String cpyrhtDivCd,
    required String mapx,
    required String mapy,
    required String mlevel,
    required String modifiedtime,
    required String sigungucode,
    required String tel,
    required String title,
  }) = _TourDto;

  factory TourDto.fromJson(Map<String, dynamic> json) => _$TourDtoFromJson(json);
}
