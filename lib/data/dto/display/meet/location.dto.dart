import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.dto.freezed.dart';
part 'location.dto.g.dart';

/// # 주소 검색 결과 저장 Dto
@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required int index, // index Num
    required String address, // 주소
    required double latitude, // 경도
    required double longitude // 위도
  }) = _LocationDto;
  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}