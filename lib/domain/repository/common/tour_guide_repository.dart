import '../../../data/dto/display/common/location/tourLocation.dto.dart';

abstract class TourGuideRepository {
  Future<List<TourLocationDto>> getLocationList(); // 위치 기반 관광정보 조회
}