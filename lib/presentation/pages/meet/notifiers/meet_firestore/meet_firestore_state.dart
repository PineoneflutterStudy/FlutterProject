import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/location_db.model.dart';

enum MeetFireStoreStatus { initial, loading, success, failure }

enum MeetLoginStatus { initial, login, nonLogin, failure }

enum MeetFireStorageStatus { initial, loading, success, failure }

class MeetFireStoreState extends Equatable {
  const MeetFireStoreState({
    this.status = MeetFireStoreStatus.initial,
    this.loginStatus = MeetLoginStatus.initial,
    this.storageStatus = MeetFireStorageStatus.initial,
    this.destinationImg = '',
    this.startingPointImg = '',
    this.getLocationInfo = const [],
  });

  final MeetFireStoreStatus status;
  final MeetLoginStatus loginStatus;
  final MeetFireStorageStatus storageStatus; // Storage 상태
  final String destinationImg; // 목적지 이미지 Url
  final String startingPointImg; // 출발지 이미지 Url
  final List<LocationDbModel> getLocationInfo;

  MeetFireStoreState copyWith({
    MeetFireStoreStatus? status,
    MeetLoginStatus? loginStatus,
    MeetFireStorageStatus? storageStatus,
    String? destinationImg,
    String? startingPointImg,
    List<LocationDbModel>? getLocationInfo,
  }) {
    return MeetFireStoreState(
      status: status ?? this.status,
      loginStatus: loginStatus ?? this.loginStatus,
      storageStatus: storageStatus ?? this.storageStatus,
      destinationImg: destinationImg ?? this.destinationImg,
      startingPointImg: startingPointImg ?? this.startingPointImg,
      getLocationInfo: getLocationInfo ?? this.getLocationInfo,
    );
  }

  @override
  List<Object?> get props => [
        status,
        loginStatus,
        storageStatus,
        destinationImg,
        startingPointImg,
        getLocationInfo,
      ];
}
