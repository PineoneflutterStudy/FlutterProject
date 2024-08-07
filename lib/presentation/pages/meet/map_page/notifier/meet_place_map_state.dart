import 'package:equatable/equatable.dart';

import '../../../../../data/dto/display/common/location/tourLocation.dto.dart';
import '../../../../../data/dto/display/meet/mobility.dto.dart';
enum MeetPlaceMapStatus { initial, loading, success, failure }

class MeetPlaceMapState extends Equatable {

  const MeetPlaceMapState ({
    this.status = MeetPlaceMapStatus.initial,
    this.tourDto = const [],
    this.directionsDto = const [],
    this.destinationImg = '',
    this.startingPointImg = '',
});

  final MeetPlaceMapStatus status;
  final List<TourLocationDto> tourDto; // 위치 기반 장소 검색 결과
  final List<MobilityDto> directionsDto; // 자동차 길찾기 검색 경로
  final String destinationImg; // 목적지 이미지 Url
  final String startingPointImg; // 출발지 이미지 Url

  MeetPlaceMapState copyWith({
    MeetPlaceMapStatus? status,
    List<TourLocationDto>? dto,
    List<MobilityDto>? directionsDto,
    String? destinationImg,
    String? startingPointImg,
  }) {
    return MeetPlaceMapState(
      status: status ?? this.status,
      tourDto: dto ?? this.tourDto,
      directionsDto:  directionsDto ?? this.directionsDto,
      destinationImg: destinationImg ?? this.destinationImg,
      startingPointImg : startingPointImg ?? this.startingPointImg,
    );
  }

  @override
  List<Object?> get props => [
    status,
    tourDto,
    directionsDto,
    destinationImg,
    startingPointImg,
  ];

}