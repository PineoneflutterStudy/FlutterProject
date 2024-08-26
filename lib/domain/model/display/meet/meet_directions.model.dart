import 'package:freezed_annotation/freezed_annotation.dart';

part 'meet_directions.model.freezed.dart';
part 'meet_directions.model.g.dart';

/// ## Kakao Map 표기에 필요한  데이터 Model
/// 1. distance - 전체 검색 결과 거리 ( 미터 )
/// 2. duration - 목적지까지 소요 시간 ( 초 )
/// 3. longitudePaths - 경로 검색 ( 경도 좌표들 )
/// 4. latitudePaths - 경로 검색 ( 위도 좌표들 )
@freezed
class MeetDirectionsModel with _$MeetDirectionsModel {
  const factory MeetDirectionsModel({
    required int distance, // 전체 검색 결과 거리 ( 미터 )
    required int duration, // 목적지까지 소요 시간 ( 초 )
    required String longitudePaths, // 경로 검색 ( 경도 좌표들 )
    required String latitudePaths, // 경로 검색 ( 위도 좌표들 )
  }) = _MeetDirectionsModel;



  factory MeetDirectionsModel.fromJson(Map<String, dynamic> json) =>
      _$MeetDirectionsModelFromJson(json);
}