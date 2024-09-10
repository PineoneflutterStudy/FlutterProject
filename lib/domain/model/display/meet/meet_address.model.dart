import 'package:freezed_annotation/freezed_annotation.dart';

part 'meet_address.model.freezed.dart';
part 'meet_address.model.g.dart';

@freezed
class MeetAddressModel with _$MeetAddressModel {
  const factory MeetAddressModel({
    required int index, // index
    required String address, // 주소
    required double latitude, // 위도
    required double longitude, // 경도
    required int totalDistance, // 총 거리(m)
    required int totalDuration, // 총 시간(초)
  }) = _MeetAddressModel;



  factory MeetAddressModel.fromJson(Map<String, dynamic> json) =>
      _$MeetAddressModelFromJson(json);
}