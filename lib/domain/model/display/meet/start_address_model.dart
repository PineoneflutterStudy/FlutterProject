/**
 * 출발지 모델 Class
 *
 * index - 출발지 index
 * address - 출발지 주소
 * latitude - 출발지 위도
 * longitude - 출발지 경도
 */

class StartAddressModel {
  final int index;
  final String address;
  final double latitude, longitude;

  const StartAddressModel({required this.index, required this.address, required this.latitude, required this.longitude});
}