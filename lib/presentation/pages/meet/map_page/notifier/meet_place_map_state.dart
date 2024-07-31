import 'package:equatable/equatable.dart';
enum MeetPlaceMapStatus { initial, loading, success, failure }

class MeetPlaceMapState extends Equatable {

  const MeetPlaceMapState ({
    this.status = MeetPlaceMapStatus.initial,
});

  final MeetPlaceMapStatus status;
  MeetPlaceMapState copyWith({
    MeetPlaceMapStatus? status,
  }) {
    return MeetPlaceMapState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];

}