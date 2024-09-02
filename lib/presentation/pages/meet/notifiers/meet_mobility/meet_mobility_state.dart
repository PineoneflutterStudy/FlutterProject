import 'package:equatable/equatable.dart';

enum MeetMobilityStatus { initial, loading, success, failure }

class MeetMobilityState extends Equatable {

  const MeetMobilityState ({
    this.status = MeetMobilityStatus.initial,
  });

  final MeetMobilityStatus status;

  MeetMobilityState copyWith({
    MeetMobilityStatus? status,
  }) {
    return MeetMobilityState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];
}