import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobility_directions.dto.freezed.dart';

part 'mobility_directions.dto.g.dart';

/// ## 자동차 길찾기 - [ roads ] Data (Dto)
@freezed
class MobilityDirectionsDto with _$MobilityDirectionsDto {
  const factory MobilityDirectionsDto({
    required String name, // 도로명
    required int distance, // 도로 길이 ( 미터 )
    required int duration, // 예상 이동 시간 ( 초 )
    required double traffic_speed, // 현재 교통 정보 속도 ( km/h )
    required int traffic_state, // 현재 교통 정보 상태
    required List<double> vertexes, // X, Y 좌표로 구성된 1차원 배열
  }) = _MobilityDirectionsDto;

  factory MobilityDirectionsDto.fromJson(Map<String, dynamic> json) =>
      _$MobilityDirectionsDtoFromJson(json);
}
