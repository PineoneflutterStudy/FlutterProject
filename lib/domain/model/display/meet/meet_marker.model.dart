import 'package:freezed_annotation/freezed_annotation.dart';

part 'meet_marker.model.freezed.dart';
part 'meet_marker.model.g.dart';

@freezed
class MeetMarkerModel with _$MeetMarkerModel {
  const factory MeetMarkerModel({
    required String imagePath,
    required int loadColorValue,
  }) = _MeetMarkerModel;

  factory MeetMarkerModel.fromJson(Map<String, dynamic> json) =>
      _$MeetMarkerModelFromJson(json);
}