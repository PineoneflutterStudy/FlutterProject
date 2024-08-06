import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinates_model.freezed.dart';
part 'coordinates_model.g.dart';

/// # 출발지 좌표와 목적지 좌표가 있는 Model
/// ### 출발지 경도 / 출발지 위도 / 목적지 경도 / 목적지 위도
@freezed
class CoordinatesModel with _$CoordinatesModel {
  const factory CoordinatesModel({
    required String startLongitude, // 출발지 경도
    required String startLatitude, // 출발지 위도
    required String endLongitude, // 목적지 경도
    required String endLatitude, // 목적지 위도
  }) = _CoordinatesModel;



  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}