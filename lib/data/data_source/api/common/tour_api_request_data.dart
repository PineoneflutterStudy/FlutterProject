import '../../../../domain/model/common/tour_guide/location_list_model.dart';

class TourApiRequestData {
  final List<String> apiUrlList = [
    'locationBasedList1', // 위치기반 관광정보 조회
    'searchFestival1', // 행사 정보 조회
    'detailImage1', // 이미지 정보 조회
  ];

  final List<String> radiusList = [
    '500',
    '1000',
    '1500',
    '2000',
    '2500',
    '3000',
    '3500',
    '4000',
    '4500',
    '5000',
  ];

  final List<String> locationParamList = [
    '?serviceKey=',
    '&numOfRows=',
    '&pageNo=',
    '&MobileOS=',
    '&MobileApp=',
    '&_type=',
    '&listYN=',
    '&arrange=',
    '&mapX=',
    '&mapY=',
    '&radius=',
    '&contentTypeId=',
    '&modifiedtime=',
  ];

  final List<String> festivalParamList = [
    '?serviceKey=',
    '&numOfRows=',
    '&pageNo=',
    '&MobileOS=',
    '&MobileApp=',
    '&_type=',
    '&listYN=',
    '&arrange=',
    '&eventStartDate=',
    '&eventEndDate=',
    '&areaCode=',
    '&sigunguCode=',
    '&modifiedtime=',
  ];

  final List<String> imageInfoParamList = [
    '?serviceKey=',
    '&MobileOS=',
    '&MobileApp=',
    '&_type=',
    '&contentId=',
    '&imageYN=',
    '&subImageYN=',
    '&numOfRows=',
    '&pageNo=',
  ];

}
