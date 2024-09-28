import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../domain/model/display/meet/tour_location.model.dart';

final Logger _logger = CustomLogger.logger;

/// ## 전체적은 Map 의 간략한 정보 및 목적지와 출발지에 대한 간략한 정보 표기를 위한 Widget
class MapBottomSheetWidget extends StatelessWidget {
  final TourLocationModel destination;
  final List<MeetAddressModel> startingPointList;
  final int viewMaxCount;

  const MapBottomSheetWidget(
      {super.key,
      required this.destination, // 목적지
      required this.startingPointList, // 출발지들,
      required this.viewMaxCount});

  @override
  Widget build(BuildContext context) {
    int initViewCount = 1;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: AppColors.surface,
        ),
        height: 150,
        width: double.infinity,
        child: Stack(
          children: [
            Center(
              child: Text(
                  '현재 뷰카운트 : $initViewCount',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: initViewCount == 1 ? false : true,
                      child: GestureDetector(
                        onTap: () {
                          if (initViewCount != 1) initViewCount--;
                        },
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 30,
                        ),
                      )
                    ),
                    Visibility(
                      visible: initViewCount == viewMaxCount ? false : true,
                      child: GestureDetector(
                        onTap: () {
                          if (initViewCount != viewMaxCount) initViewCount++;
                        },
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 30,
                        ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
