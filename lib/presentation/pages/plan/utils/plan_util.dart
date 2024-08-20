import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../domain/model/display/place/planner.model.dart';
import '../bloc/address_bloc/address_bloc.dart';
import '../dialog/go_plan_popup.dart';

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

  // 여행지 입력 팝업
  Future<Map<String, Planner>?> showGoPlanPopup({
    required BuildContext context,
    required AddressBloc addressBloc
  }) async {
    // 팝업을 띄우고 결과를 반환
    final result = await showDialog<Map<String, Planner>>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: addressBloc,
          child: GoPlanPopup(addressBloc: addressBloc),
        );
      },
    );

    return result; // 결과를 반환
  }
}