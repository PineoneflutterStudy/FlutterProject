import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/location_db.model.dart';
import '../../../../../domain/model/display/meet/meet_marker.model.dart';

enum MeetFireStoreStatus { initial, loading, success, failure }

enum MeetLoginStatus { initial, login, nonLogin, failure }

enum MeetFireStorageStatus { initial, loading, success, failure }
enum MeetItemDeleteStatus { delete, nonDelete }

class MeetFireStoreState extends Equatable {
  const MeetFireStoreState({
    this.status = MeetFireStoreStatus.initial,
    this.loginStatus = MeetLoginStatus.initial,
    this.storageStatus = MeetFireStorageStatus.initial,
    this.destinationImg = '',
    this.startingPointInfo = const [],
    this.getLocationInfo = const [],
    this.deleteStatus = MeetItemDeleteStatus.nonDelete,
  });

  final MeetFireStoreStatus status;
  final MeetLoginStatus loginStatus;
  final MeetFireStorageStatus storageStatus; // Storage 상태
  final String destinationImg; // 목적지 이미지 Url
  final List<MeetMarkerModel> startingPointInfo; // 출발지 이미지 와 Line Color 리스트
  final List<LocationDbModel> getLocationInfo;
  final MeetItemDeleteStatus deleteStatus; // 개별 아이템 [ 삭제 / Non 삭제 ]

  MeetFireStoreState copyWith({
    MeetFireStoreStatus? status,
    MeetLoginStatus? loginStatus,
    MeetFireStorageStatus? storageStatus,
    String? destinationImg,
    List<MeetMarkerModel>? startingPointInfo,
    List<LocationDbModel>? getLocationInfo,
    MeetItemDeleteStatus? deleteStatus,
  }) {
    return MeetFireStoreState(
      status: status ?? this.status,
      loginStatus: loginStatus ?? this.loginStatus,
      storageStatus: storageStatus ?? this.storageStatus,
      destinationImg: destinationImg ?? this.destinationImg,
      startingPointInfo: startingPointInfo ?? this.startingPointInfo,
      getLocationInfo: getLocationInfo ?? this.getLocationInfo,
      deleteStatus:  deleteStatus ?? this.deleteStatus,
    );
  }

  @override
  List<Object?> get props => [
        status,
        loginStatus,
        storageStatus,
        destinationImg,
        startingPointInfo,
        getLocationInfo,
        deleteStatus,
      ];
}
