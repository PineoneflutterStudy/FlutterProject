import 'package:equatable/equatable.dart';

enum MeetPageStatus { initial, loading, success, failure }
enum MeetPageLoginStatus { initial, login, nonLogin, failure }

class MeetPageState extends Equatable {
  const MeetPageState({
    this.status = MeetPageStatus.initial,
    this.loginStatus = MeetPageLoginStatus.initial,
  });

  final MeetPageStatus status;
  final MeetPageLoginStatus loginStatus;

  MeetPageState copyWith({
    MeetPageStatus? status,
    MeetPageLoginStatus? loginStatus,
  }) {
    return MeetPageState(
      status: status ?? this.status,
      loginStatus: loginStatus ?? this.loginStatus
    );
  }

  @override
  List<Object?> get props => [
    status,
    loginStatus,
  ];
}
