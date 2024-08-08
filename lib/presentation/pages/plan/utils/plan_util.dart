import 'package:intl/intl.dart';

class PlanUtil {

  /// 거리 format
  String formatDistance(String? distanceStr) {
    double distance = double.parse(distanceStr ?? '0');

    if (distance >= 1000) {
      // 1000 이상일 경우 km 단위로 변환
      double distanceInKm = distance / 1000;
      return NumberFormat('#,##0.00').format(distanceInKm) + ' km';
    } else {
      // 1000 이하일 경우 m 단위로 표기
      return distance.toStringAsFixed(0) + ' m';
    }
  }

  /// 장소 카테고리에서 마지막 두개의 카테고리만 가져오기
  String getLastTwoCategories(String categoryName) {
    List<String> categories = categoryName.split(' > ');
    if (categories.length > 1) {
      return categories.sublist(categories.length - 2).join(' > ');
    } else {
      return categoryName;
    }
  }
}