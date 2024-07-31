/**
 *  관광정보 서비스 - 행사 정보 조회 Model
 *  https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15101578#/
 */

class FestivalInfoListModel {

  final String serviceKey; // !! 필수 인증키(서비스키)
  final int? numOfRows; // 한 페이지 결과 수
  final int? pageNo; // 페이지 번호
  final String MobileOS; // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
  final String MobileApp; // !! 필수 : 서비스명(어플명)
  final String? type; // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
  final String? listYN; // 목록 구분 ( Y : 목록 / N : 개수 )
  final String? arrange; // 정렬구분 (A=제목순, C=수정일순, D=생성일순) 대표이미지가반드시있는정렬(O=제목순, Q=수정일순, R=생성일순)
  final String eventStartDate ; // !! 필수 : 행사시작일(형식 :YYYYMMDD)
  final String? eventEndDate; // 행사종료일(형식 :YYYYMMDD)
  final String? areaCode; // 지역코드(지역코드조회 참고)
  final String? sigunguCode; // 시군구코드(지역코드조회 참고)
  final String? modifiedtime; // 수정일(형식 :YYYYMMDD)

  const FestivalInfoListModel ({
    required this.serviceKey,
    required this.numOfRows,
    required this.pageNo,
    required this.MobileOS,
    required this.MobileApp,
    required this.type,
    required this.listYN,
    required this.arrange,
    required this.eventStartDate,
    required this.eventEndDate,
    required this.areaCode,
    required this.sigunguCode,
    required this.modifiedtime,
  });

  List<String> get paramValues => [
    serviceKey,
    numOfRows.toString(),
    pageNo.toString(),
    MobileOS,
    MobileApp,
    type.toString(),
    listYN.toString(),
    arrange.toString(),
    eventStartDate,
    eventEndDate.toString(),
    areaCode.toString(),
    sigunguCode.toString(),
    modifiedtime.toString(),
  ];
}