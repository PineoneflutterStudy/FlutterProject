import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dto/display/meet/tour_location.dto.dart';

part 'tour_service_response_wrapper.freezed.dart';
part 'tour_service_response_wrapper.g.dart';

@Freezed(genericArgumentFactories: true)
class TourServiceResponseWrapper<T> with _$TourServiceResponseWrapper<T> {
  const factory TourServiceResponseWrapper({
    required Response response,
  }) = _TourServiceResponseWrapper<T>;

  factory TourServiceResponseWrapper.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$TourServiceResponseWrapperFromJson(json, fromJsonT);
}

@freezed
class Response with _$Response {
  const factory Response({
    required Header header,
    required Body body,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@freezed
class Header with _$Header {
  const factory Header({
    required String resultCode,
    required String resultMsg,
  }) = _Header;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}

@freezed
class Body with _$Body {
  const factory Body({
    Items? items,
    required int numOfRows,
    required int pageNo,
    required int totalCount,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) =>
      _$BodyFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    @Default([]) List<TourLocationDto>? item,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);
}
