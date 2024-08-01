/**
 *  관광정보 서비스 - 위치기반 관광정보 조회 Model
 *  https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15101578#/
 */

class LocationListModel {

  final String? serviceKey; // !! 필수 인증키(서비스키)
  final int? numOfRows; // 한 페이지 결과 수
  final int? pageNo; // 페이지 번호
  final String? MobileOS; // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
  final String? MobileApp; // !! 필수 : 서비스명(어플명)
  final String? type; // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
  final String? listYN; // 목록 구분 ( Y : 목록 / N : 개수 )
  final String? arrange; // 정렬구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가반드시있는정렬(O=제목순, Q=수정일순, R=생성일순)
  final String? mapX; // !! 필수 :  GPS X좌표(WGS84 경도좌표)
  final String? mapY; // !! 필수 : GPS Y좌표(WGS84 위도좌표)
  final String? radius; // !! 필수 : 거리반경(단위:m) , Max값 20000m=20Km
  final String? contentTypeId; // 관광타입(12:관광지, 14:문화시설, 15:축제공연행사, 25:여행코스, 28:레포츠, 32:숙박, 38:쇼핑, 39:음식점) ID
  final String? modifiedtime; // 수정일(형식 :YYYYMMDD)

  const LocationListModel({
    required this.serviceKey,
    required this.numOfRows,
    required this.pageNo,
    required this.MobileOS,
    required this.MobileApp,
    required this.type,
    required this.listYN,
    required this.arrange,
    required this.mapX,
    required this.mapY,
    required this.radius,
    required this.contentTypeId,
    required this.modifiedtime,
  });

  List<String> get paramValues => [
    serviceKey.toString(),
    numOfRows.toString(),
    pageNo.toString(),
    MobileOS.toString(),
    MobileApp.toString(),
    type.toString(),
    listYN.toString(),
    arrange.toString(),
    mapX.toString(),
    mapY.toString(),
    radius.toString(),
    contentTypeId.toString(),
    modifiedtime.toString(),
  ];
}