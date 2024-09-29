import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../domain/model/display/meet/meet_marker.model.dart';
import '../../../../domain/model/display/meet/tour_location.model.dart';

final Logger _logger = CustomLogger.logger;

/// ## Map Bottom Sheet No.1 전체 정보
class MapBottomAllInfoWidget extends StatelessWidget {
  final int vHeight;
  final TourLocationModel destination;
  final List<MeetAddressModel> startingPointList;
  final List<MeetMarkerModel> markerModel;
  const MapBottomAllInfoWidget ({
    super.key,
    required this.vHeight,
    required this.destination,
    required this.startingPointList,
    required this.markerModel
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Image.asset(AppIcons.iconMapRed, width: 15, height: 15),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                      '${destination.title}',
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColors.black
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            height: 110,
            child: Container(
              height: double.infinity,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                // 스크롤 비활성화
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 40,
                ),
                itemCount: startingPointList.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(markerModel[index].mapMarkerIcon, width: 30, height: 30),
                      SizedBox(width: 3,),
                      Text(
                          '${formatDistance(startingPointList[index].totalDistance.toString())} / ${formatDuration(startingPointList[index].totalDuration.toString())}',
                        style: TextStyle(
                          fontSize: 17
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

/// ## 출발지 - 목적지 거리 포멧
String formatDistance(String distanceStr) {
  double distance = double.parse(distanceStr);

  if (distance >= 1000) {
    double distanceInKm = distance / 1000;
    return NumberFormat('#,##0.00').format(distanceInKm) + 'km';
  } else {
    return distance.toStringAsFixed(0) + 'm';
  }
}

/// ## 출발지 - 목적지 시간 포멧
String formatDuration(String durationStr) {
  double durationInSeconds = double.parse(durationStr);

  int hours = (durationInSeconds ~/ 3600).toInt(); // 시간 계산 (초를 시간으로 변환)
  int minutes = ((durationInSeconds % 3600) ~/ 60).toInt(); // 남은 초를 분으로 변환

  if (hours > 0) {
    return '$hours시간 $minutes분'; // 시간과 분 포맷
  } else {
    return '$minutes분'; // 분만 반환
  }
}