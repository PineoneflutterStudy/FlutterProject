import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/location_db.model.dart';

final Logger _logger = CustomLogger.logger;
class SaveMeetListItemWidget extends StatelessWidget {
  final LocationDbModel locationModel;
  const SaveMeetListItemWidget ({super.key, required this.locationModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () async { // 아이템 onTap 시 Map 이동하도록
          // 주소가 모두 입력
          await context.pushNamed('saveMeetMap', extra: locationModel);
        },
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 7, horizontal: 13),
          color: AppColors.onPrimary,
          borderOnForeground: true,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            padding: EdgeInsets.fromLTRB(25, 15, 20, 15),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 270,
                          child: Text( // 목적지 음식점 이름
                            locationModel.destination_point.first.title,
                            style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          )
                      ),
                      Container(
                        width: 270,
                        child: Text(
                          locationModel.destination_point.first.addr1,
                          style: const TextStyle(
                              color: AppColors.contentSecondary,
                              fontSize: 16
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: locationModel.starting_point_list.length, // 출발지 개수만큼 view Setting
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(AppIcons.iconMapRed, width: 8, height: 8),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(3, 3, 5, 0),
                                child: Text(
                                    formatDistance(
                                        locationModel.starting_point_list[index].totalDistance.toString()
                                    ),
                                    style: TextStyle(
                                        color: AppColors.error
                                    )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Container(
                                  width: 220,
                                  child: Text(
                                      locationModel.starting_point_list[index].address,
                                      style: TextStyle(
                                          fontSize: 20
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.calendar_month_rounded, size: 12, color: AppColors.bluePolyLine80,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 2, 0, 0),
                            child: Text(formatDateTime(locationModel.location_id),
                                style: TextStyle(fontSize: 20, color: AppColors.blue),
                                overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      )
    );
  }

}

/// ## 출발지 - 목적지 거리 포멧
String formatDistance(String distanceStr) {
  double distance = double.parse(distanceStr);

  if (distance >= 1000) {
    double distanceInKm = distance / 1000;
    return NumberFormat('#,##0.00').format(distanceInKm) + ' km';
  } else {
    return distance.toStringAsFixed(0) + ' m';
  }
}

/// ## 데이터 저장 날짜 yyyy.MM.dd 포멧
String formatDateTime(String dateTime) {
  DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(dateTime);
  return DateFormat('yyyy.MM.dd').format(tempDate);
}