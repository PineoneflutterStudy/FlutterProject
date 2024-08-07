import 'dart:io';

import '../../../../domain/model/display/home/location_list_model.dart';

class TourApiRequestData {
  final String appName = '개꿀트립';
  final String emptyData = '';
  final int emptyIntData = -1;
  final String responseType = 'json';
  final int defaultRadius = 500;
  final List<String> osList = [
    'AND', // OS - Android
    'IOS', // OS - IPhone
    'WIN', // OS - Window Phone
    'ETC' // OS - etc...
  ];

  final List<String> arrangeList = [
    'A', // 정렬구분 - 제목순
    'C', // 정렬구분 - 수정일순
    'D', // 정렬구분 - 생성일순
    'O', // 대표이미지가 반드시 있는 정렬 - 제목순
    'Q', // 대표이미지가 반드시 있는 정렬 - 수정일순
    'R', // 대표이미지가 반드시 있는 정렬 - 생성일순
  ];

  final List<String> contentTypes = [
    '12', // 관광지
    '14', // 문화시설
    '15', // 축제공연행사
    '25', // 여행코스
    '28', // 레포츠
    '32', // 숙박
    '38', // 쇼핑
    '39', // 음식점
  ];
  final List<String> apiUrlList = [
    'locationBasedList1', // 위치기반 관광정보 조회
    'searchFestival1', // 행사 정보 조회
    'detailImage1', // 이미지 정보 조회
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

  /// # 위치 기반 관광 장소 검색 Request Model 생성
  /// ### 필수!
  /// * apiKey
  /// * 위도
  /// * 경도
  /// * 검색 범위
  /// * 장소 타입
  LocationListModel getLocationListModel(String apiKey, String longitude, String latitude, String radius, String contentType) {
    return LocationListModel(
        serviceKey: apiKey,
        numOfRows: emptyIntData,
        pageNo: emptyIntData,
        MobileOS: Platform.isAndroid ? osList[0] : osList[1],
        MobileApp: appName,
        type: responseType,
        listYN: emptyData,
        arrange: arrangeList[1],
        mapX: longitude,
        mapY: latitude,
        radius: radius,
        contentTypeId: contentType,
        modifiedtime: emptyData);
  }
}
