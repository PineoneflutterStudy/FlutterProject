import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/meet_directions.model.dart';

enum MeetMobilityStatus { initial, loading, success, failure }

class MeetMobilityState extends Equatable {
  const MeetMobilityState({
    this.status = MeetMobilityStatus.initial,
    this.directionsModel = const [],
  });

  final MeetMobilityStatus status;
  final List<MeetDirectionsModel> directionsModel; // 자동차 길찾기 검색 경로

  MeetMobilityState copyWith({
    MeetMobilityStatus? status,
    List<MeetDirectionsModel>? directionsModel,
  }) {
    return MeetMobilityState(
      status: status ?? this.status,
      directionsModel: directionsModel ?? this.directionsModel,
    );
  }

  @override
  List<Object?> get props => [
        status,
        directionsModel,
      ];
}
