import 'package:freezed_annotation/freezed_annotation.dart';

import '../../dto/display/meet/mobility_directions.dto.dart';

part 'kakao_mobility_response_wrapper.freezed.dart';

part 'kakao_mobility_response_wrapper.g.dart';

@freezed
class KakaoMobilityResponseWrapper<T> with _$KakaoMobilityResponseWrapper<T> {
  const factory KakaoMobilityResponseWrapper({
    required String trans_id,
    required List routes,
  }) = _KakaoMobilityResponseWrapper<T>;

  factory KakaoMobilityResponseWrapper.fromJson(Map<String, dynamic> json) =>
      _$KakaoMobilityResponseWrapperFromJson(json);
}

/*@freezed
class Routes with _$Routes {
  const factory Routes({
    required int result_code,
    required String result_msg,
    Summary? summary,
    Sections? sections,
  }) = _Routes;

  factory Routes.fromJson(Map<String, dynamic> json) => _$RoutesFromJson(json);
}

@freezed
class Summary with _$Summary {
  const factory Summary({
    Origin? origin,
    Destination? destination,
    required String? waypoints,
    required String priority,
    Bound? bound,
    Fare? fare,
    required int distance,
    required int duration,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
class Origin with _$Origin {
  const factory Origin({
    required String name,
    required double x,
    required double y,
  }) = _Origin;

  factory Origin.fromJson(Map<String, dynamic> json) => _$OriginFromJson(json);
}

@freezed
class Destination with _$Destination {
  const factory Destination({
    required String name,
    required double x,
    required double y,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}

@freezed
class Bound with _$Bound {
  const factory Bound({
    required double min_x,
    required double min_y,
    required double max_x,
    required double max_y,
  }) = _Bound;

  factory Bound.fromJson(Map<String, dynamic> json) => _$BoundFromJson(json);
}

@freezed
class Fare with _$Fare {
  const factory Fare({
    required int taxi,
    required int toll,
  }) = _Fare;

  factory Fare.fromJson(Map<String, dynamic> json) => _$FareFromJson(json);
}

@freezed
class Sections with _$Sections {
  const factory Sections({
    required int distance,
    required int duration,
    Bound? bound,
    List<MobilityDirectionsDto>? roads,
    List<String>? guides,
  }) = _Sections;

  factory Sections.fromJson(Map<String, dynamic> json) =>
      _$SectionsFromJson(json);
}*/
