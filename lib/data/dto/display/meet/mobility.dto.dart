import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobility.dto.freezed.dart';
part 'mobility.dto.g.dart';

@freezed
class MobilityDto with _$MobilityDto {
  const factory MobilityDto({
    required int distance, // 전체 검색 결과 거리 ( 미터 )
    required int duration, // 목적지까지 소요 시간 ( 초 )
    required String longitudePaths, // 경로 검색 ( 경도 좌표들 )
    required String latitudePaths, // 경로 검색 ( 위도 좌표들 )
  }) = _MobilityDto;



  factory MobilityDto.fromJson(Map<String, dynamic> json) =>
      _$MobilityDtoFromJson(json);
}