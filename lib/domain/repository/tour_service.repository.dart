import '../../data/data_source/response_wrapper/response_wrapper.dart';
import '../model/display/meet/tour_location.model.dart';
import 'repository.dart';

abstract class TourServiceRepository extends Repository {

  Future<ResponseWrapper<List<TourLocationModel>>> getTourLocationInfo({
    required String serviceKey,
    required int numOfRows,
    required int pageNo,
    required String MobileOS,
    required String MobileApp,
    required String type,
    required String listYN,
    required String arrange,
    required String mapX,
    required String mapY,
    required String radius,
    required String contentTypeId,
    required String modifiedtime,
  });

  /*Future<ResponseWrapper<List<ImageInfoListModel>>> getTourImageInfo({
    required String serviceKey,
    required String MobileOS,
    required String MobileApp,
    required String type,
    required String contentId,
    required String imageYN,
    required String subImageYN,
    required int numOfRows,
    required int pageNo,
  });

  Future<ResponseWrapper<List<FestivalInfoListModel>>> getTourFestivalInfo({
    required String serviceKey,
    required int numOfRows,
    required int pageNo,
    required String MobileOS,
    required String MobileApp,
    required String type,
    required String listYN,
    required String arrange,
    required String eventStartDate,
    required String eventEndDate,
    required String areaCode,
    required String sigunguCode,
    required String modifiedtime,
  });*/

}