import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_service_response_wrapper.freezed.dart';
part 'tour_service_response_wrapper.g.dart';

@freezed
class TourServiceResponseWrapper<T> with _$TourServiceResponseWrapper<T> {
  factory TourServiceResponseWrapper({
    Response? response,
  }) = _TourServiceResponseWrapper<T>;

  factory TourServiceResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$TourServiceResponseWrapperFromJson(json);
}

@freezed
class Response with _$Response {
  factory Response({
    Header? header,
    Body? body,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Header with _$Header {
  factory Header({
    required String resultCode,
    required String resultMsg,
  }) = _Header;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);
}

@freezed
class Body with _$Body {
  factory Body({
    Items? items,
    required int numOfRows,
    required int pageNo,
    required int totalCount,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);
}

@freezed
class Items with _$Items {
  factory Items({
    List<dynamic>? item,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}