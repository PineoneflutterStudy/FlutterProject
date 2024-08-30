import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../domain/model/display/place/planner.model.dart';
import '../../../../domain/model/display/place/transportation.dart';
import '../bloc/address_bloc/address_bloc.dart';
import '../dialog/go_plan_popup.dart';

mixin PlanUtil {
  /// 거리 format
  /// 1000 이상일 경우 km, 1000 이하일 경우 m 단위로 표기
  String formatDistance(String? distanceStr) {
    double distance = double.parse(distanceStr ?? '0');

    if (distance >= 1000) {
      double distanceInKm = distance / 1000;
      return NumberFormat('#,##0.00').format(distanceInKm) + ' km';
    } else {
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

  /// 여행지 입력 팝업
  // init_planner_page, planner_page 에서 사용
  Future<Map<String, Planner>?> showGoPlanPopup(
      {required BuildContext context, required AddressBloc addressBloc}) async {
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

  /// 차량 이동 시간 계산
  /// 시속 60km = 분속 1km = 분속 1000m
  String getCarTravelTime(String distance) {
    double timeInMinutes = double.parse(distance) / 1000;
    return getTimeText(timeInMinutes);
  }

  /// 도보 이동 시간 계산
  /// 1km = 1000m 이동 시 15분 소요되는 것으로 가정
  String getWalkTravelTime(String distance) {
    double timeInMinutes = (double.parse(distance) / 1000) * 15;
    return getTimeText(timeInMinutes);
  }

  /// 이동 시간 "몇시몇분몇초" 텍스트 반환
  /// todo 60초 이하는 1분미만 수정
  String getTimeText(double timeInMinutes) {
    int hours = timeInMinutes ~/ 60;
    int minutes = (timeInMinutes % 60).toInt();
    int seconds = ((timeInMinutes - timeInMinutes.floor()) * 60).toInt();
    String hText = (hours > 0) ? " ${hours.toString()}시" : "";
    String mText = (minutes > 0) ? " ${minutes.toString()}분" : "";
    String sText = (minutes < 1 && seconds > 0) ? "1분 미만" : " ${seconds.toString()}초";
    return "$hText$mText$sText";
  }

  /// 이동수단 정보 반환 (텍스트, 색상, 아이콘)
  /// default = 도보
  Transportation getTransportationByCode(String code) {
    for (var transportation in Transportation.values) {
      if (transportation.code == code) {
        return transportation;
      }
    }
    return Transportation.walk;
  }

  /// [walkIcon+이동시간] widget
  Widget buildWalkTravelTime(String walkTravelTime) {
    final Transportation walk = getTransportationByCode('walk');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(walk.icon, color: walk.textColor , size: 13),
        SizedBox(width: 2),
        Text(walkTravelTime, style: TextStyle(fontSize: 16, color: walk.textColor)),
      ],
    );
  }

  /// [carIcon+이동시간] widget
  Widget buildCarTravelTime(String carTravelTime) {
    final Transportation car = getTransportationByCode('car');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(car.icon, color: car.textColor, size: 13),
        SizedBox(width: 3),
        Text(carTravelTime, style: TextStyle(fontSize: 16, color: car.textColor))
      ],
    );
  }

  /// 시간을 분으로 변환
  int convertTimeToMinutes(TimeOfDay time) {
    return time.hour * 60 + time.minute;
  }

  /// 을/를 반환
  String getParticle(String word) {
    if (word.isEmpty) {
      return '';
    }

    String lastChar = word[word.length - 1];

    // 마지막 문자가 한글이 아닌 경우
    if (lastChar.codeUnitAt(0) < 0xAC00 || lastChar.codeUnitAt(0) > 0xD7A3) {
      return '을';
    }

    int lastCharCode = lastChar.codeUnitAt(0);
    int baseCode = lastCharCode - 0xAC00;
    int finalConsonantIndex = baseCode % 28;

    // 받침이 있으면 '을', 없으면 '를' 반환
    return finalConsonantIndex == 0 ? '를' : '을';
  }

  /// [timeString] - "10:00 AM"과 같은 형식의 시간 문자열
  /// [minutes] - 추가할 분 단위 (예: 120)
  String addMinutesToTime(String timeString, String minutes) {
    final DateFormat timeFormat = DateFormat('h:mm a');

    DateTime initialTime = timeFormat.parse(timeString);

    int minutesToAdd = int.tryParse(minutes) ?? 0;

    DateTime updatedTime = initialTime.add(Duration(minutes: minutesToAdd));

    return timeFormat.format(updatedTime);
  }

  //code, 거리 입력 시 이동 수단 정보 반환
  String getTravelTime(String distance, String code){
    return code == 'car' ? getCarTravelTime(distance) : getWalkTravelTime(distance);
  }

  /// 주어진 시간 문자열을 분 단위로 변환하여 반환합니다.
  /// 예: "1시 5분 8초" -> 65 (분)
  String timeStringToMinutes(String timeString) {
    RegExp regex = RegExp(r'(?:(\d+)시)?(?:\s*(\d+)분)?(?:\s*(\d+)초)?');
    RegExpMatch? match = regex.firstMatch(timeString);

    int hours = int.parse(match?.group(1) ?? '0');
    int minutes = int.parse(match?.group(2) ?? '0');
    int totalMinutes = hours * 60 + minutes;

    return (totalMinutes >= 1) ? totalMinutes.toString() : '0';
  }
}