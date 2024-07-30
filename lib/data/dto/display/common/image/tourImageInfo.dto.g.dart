// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourImageInfo.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImageInfoDtoImpl _$$TourImageInfoDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TourImageInfoDtoImpl(
      contentid: json['contentid'] as String,
      imgname: json['imgname'] as String,
      originimgurl: json['originimgurl'] as String,
      serialnum: json['serialnum'] as String,
      cpyrhtDivCd: json['cpyrhtDivCd'] as String,
      smallimageurl: json['smallimageurl'] as String,
    );

Map<String, dynamic> _$$TourImageInfoDtoImplToJson(
        _$TourImageInfoDtoImpl instance) =>
    <String, dynamic>{
      'contentid': instance.contentid,
      'imgname': instance.imgname,
      'originimgurl': instance.originimgurl,
      'serialnum': instance.serialnum,
      'cpyrhtDivCd': instance.cpyrhtDivCd,
      'smallimageurl': instance.smallimageurl,
    };
