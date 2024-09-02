import 'package:equatable/equatable.dart';

enum MeetFireStoreStatus { initial, loading, success, failure }
enum MeetLoginStatus { initial, login, nonLogin, failure }

class MeetFireStoreState extends Equatable {
  const MeetFireStoreState({
    this.status = MeetFireStoreStatus.initial,
    this.loginStatus = MeetLoginStatus.initial,
  });

  final MeetFireStoreStatus status;
  final MeetLoginStatus loginStatus;

  MeetFireStoreState copyWith({
    MeetFireStoreStatus? status,
    MeetLoginStatus? loginStatus,
  }) {
    return MeetFireStoreState(
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
