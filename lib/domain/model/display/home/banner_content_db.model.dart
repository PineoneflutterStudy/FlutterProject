import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_content_db.model.freezed.dart';
part 'banner_content_db.model.g.dart';

@freezed
class BannerContentDbModel with _$BannerContentDbModel {
  const factory BannerContentDbModel({
    required String entryLocation,
    required String imageUrl,
    required String type,
  }) = _BannerContentDbModel;



  factory BannerContentDbModel.fromJson(Map<String, dynamic> json) =>
      _$BannerContentDbModelFromJson(json);
}