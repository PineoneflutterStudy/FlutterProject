import 'package:equatable/equatable.dart';

import '../../../../../data/dto/display/common/location/tourLocation.dto.dart';
import '../../../../../data/dto/display/meet/mobility.dto.dart';
enum MeetPlaceMapStatus { initial, loading, success, failure }

class MeetPlaceMapState extends Equatable {

  const MeetPlaceMapState ({
    this.status = MeetPlaceMapStatus.initial,
    this.tourDto = const [],
    this.directionsDto = const [],
});

  final MeetPlaceMapStatus status;
  final List<TourLocationDto> tourDto;
  final List<MobilityDto> directionsDto;

  MeetPlaceMapState copyWith({
    MeetPlaceMapStatus? status,
    List<TourLocationDto>? dto,
    List<MobilityDto>? directionsDto,
  }) {
    return MeetPlaceMapState(
      status: status ?? this.status,
      tourDto: dto ?? this.tourDto,
      directionsDto:  directionsDto ?? this.directionsDto
    );
  }

  @override
  List<Object?> get props => [
    status,
    tourDto,
    directionsDto,
  ];

}