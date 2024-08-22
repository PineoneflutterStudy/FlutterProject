import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_image_info.model.freezed.dart';
part 'tour_image_info.model.g.dart';

/// ## 관광정보 서비스 - 이미지 정보 Model
@freezed
class TourImageInfoModel with _$TourImageInfoModel {
  const factory TourImageInfoModel({
    required String contentid, // 콘텐츠 ID
    required String imgname, // 이미지명
    required String originimgurl, // 원본이미지 ( 약 500*333 Size )
    required String serialnum, // 이미지 일련번호
    required String cpyrhtDivCd, // 저작권 유형 ( Type1:제1유형(출처표시-권장), Type3:제3유형(제1유형+변경금지) )
    required String smallimageurl, // 썸네일 이미지 ( 약 160 * 100 Size )
  }) = _TourImageInfoModel;



  factory TourImageInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TourImageInfoModelFromJson(json);
}