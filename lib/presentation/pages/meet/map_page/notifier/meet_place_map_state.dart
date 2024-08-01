import 'package:equatable/equatable.dart';

import '../../../../../data/dto/display/common/location/tourLocation.dto.dart';
enum MeetPlaceMapStatus { initial, loading, success, failure }

class MeetPlaceMapState extends Equatable {

  const MeetPlaceMapState ({
    this.status = MeetPlaceMapStatus.initial,
    this.tourDto = const [],
});

  final MeetPlaceMapStatus status;
  final List<TourLocationDto> tourDto;

  MeetPlaceMapState copyWith({
    MeetPlaceMapStatus? status,
    List<TourLocationDto>? dto,
  }) {
    return MeetPlaceMapState(
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