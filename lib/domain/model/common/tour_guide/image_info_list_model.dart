/**
 *  관광정보 서비스 - 이미지 정보 조회 Model
 *  https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15101578#/
 */

class ImageInfoListModel {

  final String serviceKey; // !! 필수 인증키(서비스키)
  final String MobileOS; // !! 필수 : OS 구분 ( IOS / AND / WIN / ETC )
  final String MobileApp; // !! 필수 : 서비스명(어플명)
  final String? type; // 응답메시지 형식 : REST 방식의 URL 호출 시 json 값 추가 ( 디폴트 응답베시지 형식은 XML )
  final String contentId; // !! 필수 : 콘텐츠 ID
  final String? imageYN; // 이미지조회1 : Y=콘텐츠이미지조회 N=”음식점”타입의음식메뉴이미지
  final String? subImageYN; // 이미지조회2 : Y=원본,썸네일이미지조회,공공누리 저작권유형정보조회 N=Null
  final int? numOfRows; // 한페이지결과수
  final int? pageNo; // 페이지번호
  const ImageInfoListModel({
    required this.serviceKey,
    required this.MobileOS,
    required this.MobileApp,
    required this.type,
    required this.contentId,
    required this.imageYN,
    required this.subImageYN,
    required this.numOfRows,
    required this.pageNo,
  });

  List<String> get paramValues => [
    serviceKey,
    MobileOS,
    MobileApp,
    type.toString(),
    contentId,
    imageYN.toString(),
    subImageYN.toString(),
    numOfRows.toString(),
    pageNo.toString(),
  ];
}