import 'package:freezed_annotation/freezed_annotation.dart';

part 'mobility_directions.model.freezed.dart';
part 'mobility_directions.model.g.dart';

/// ## 자동차 길찾기 Model ( roads ) Data Model
@freezed
class MobilityDirectionsModel with _$MobilityDirectionsModel {
  const factory MobilityDirectionsModel ({
    required int distance,
    required int duration,
    required List vertexes,
  }) = _MobilityDirectionsModel;



  factory MobilityDirectionsModel.fromJson(Map<String, dynamic> json) =>
      _$MobilityDirectionsModelFromJson(json);
}