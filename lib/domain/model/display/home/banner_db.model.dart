import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'banner_content_db.model.dart';

part 'banner_db.model.freezed.dart';
part 'banner_db.model.g.dart';

@freezed
class BannerDbModel with _$BannerDbModel {
  const factory BannerDbModel({
    @Default([]) List<BannerContentDbModel> contents,
  }) = _BannerDbModel;



  factory BannerDbModel.fromJson(Map<String, dynamic> json) =>
      _$BannerDbModelFromJson(json);
}