import 'dart:io';

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
}
