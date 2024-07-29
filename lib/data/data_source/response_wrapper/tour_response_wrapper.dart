import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_response_wrapper.freezed.dart';
part 'tour_response_wrapper.g.dart';

@freezed
class TourResponseWrapper with _$TourResponseWrapper {
  const factory TourResponseWrapper({
    @Default([]) List,
    @Default('0') numOfRows,
    @Default('0') pageNo,
    @Default('0') totalCount,
  }) = _TourResponseWrapper;



  factory TourResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$TourResponseWrapperFromJson(json);
}