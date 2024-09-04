import 'package:equatable/equatable.dart';

import '../../../../../domain/model/display/meet/tour_location.model.dart';

enum MeetTourServiceStatus { initial, loading, success, failure }

class MeetTourServiceState extends Equatable {

  const MeetTourServiceState ({
    this.status = MeetTourServiceStatus.initial,
    this.tourDto = const [],
  });

  final MeetTourServiceStatus status;
  final List<TourLocationModel> tourDto; // 위치 기반 장소 검색 결과

  MeetTourServiceState copyWith({
    MeetTourServiceStatus? status,
    List<TourLocationModel>? dto,
  }) {
    return MeetTourServiceState(
      status: status ?? this.status,
      tourDto: dto ?? this.tourDto,
    );
  }

  @override
  List<Object?> get props => [
    status,
    tourDto,
  ];
}