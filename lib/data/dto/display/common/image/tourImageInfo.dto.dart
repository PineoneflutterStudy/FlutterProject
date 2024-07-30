import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourImageInfo.dto.freezed.dart';
part 'tourImageInfo.dto.g.dart';

/**
 * 이미지 정보 조회 Dto
 */
@freezed
class TourImageInfoDto with _$TourImageInfoDto {
  const factory TourImageInfoDto({
    required String contentid, // 콘텐츠 ID
    required String imgname, // 이미지명
    required String originimgurl, // 원본이미지 ( 약 500*333 Size )
    required String serialnum, // 이미지 일련번호
    required String cpyrhtDivCd, // 저작권 유형 ( Type1:제1유형(출처표시-권장), Type3:제3유형(제1유형+변경금지) )
    required String smallimageurl, // 썸네일 이미지 ( 약 160 * 100 Size )
  }) = _TourImageInfoDto;



  factory TourImageInfoDto.fromJson(Map<String, dynamic> json) =>
      _$TourImageInfoDtoFromJson(json);
}