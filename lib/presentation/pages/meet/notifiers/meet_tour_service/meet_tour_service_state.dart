import 'package:equatable/equatable.dart';

enum MeetTourServiceStatus { initial, loading, success, failure }

class MeetTourServiceState extends Equatable {

  const MeetTourServiceState ({
    this.status = MeetTourServiceStatus.initial,
  });

  final MeetTourServiceStatus status;

  MeetTourServiceState copyWith({
    MeetTourServiceStatus? status,
  }) {
    return MeetTourServiceState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];
}