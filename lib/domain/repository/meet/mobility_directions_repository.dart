import '../../../data/data_source/response_wrapper/response_wrapper.dart';
import '../../model/display/meet/tour_location.model.dart';
import '../repository.dart';

abstract class MobilityDirectionsRepository extends Repository {

  Future<ResponseWrapper<List<TourLocationModel>>> getDirectionsInfo({
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