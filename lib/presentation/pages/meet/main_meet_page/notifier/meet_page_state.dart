import 'package:equatable/equatable.dart';

enum MeetPageStatus { initial, loading, success, failure }

class MeetPageState extends Equatable {
  const MeetPageState({
    this.status = MeetPageStatus.initial,
  });

  final MeetPageStatus status;

  MeetPageState copyWith({
    MeetPageStatus? status,
  }) {
    return MeetPageState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [
    status,
  ];
}
