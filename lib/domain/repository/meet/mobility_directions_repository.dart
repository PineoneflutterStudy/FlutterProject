import '../../../data/data_source/response_wrapper/response_wrapper.dart';
import '../../model/display/meet/mobility_directions.model.dart';
import '../repository.dart';

/// ## Kakao Mobility 자동차 길찾기 Repository
abstract class MobilityDirectionsRepository extends Repository {

  Future<ResponseWrapper<List<MobilityDirectionsModel>>> getDirectionsInfo({
    required String startLongitude,
    required String startLatitude,
    required String endLongitude,
    required String endLatitude,
    required String priority, // !! 고정값 : RECOMMEND
    required String car_fuel, // !! 고정값 : GASOLINE
    required bool car_hipass, // !! 고정값 : false
    required bool alternatives, // !! 고정값 : false
    required bool road_details, // !! 고정값 : false

  });

}