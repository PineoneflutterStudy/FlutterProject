import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../domain/model/display/meet/meet_marker.model.dart';
import '../../../../domain/model/display/meet/tour_location.model.dart';
import 'map_bottom_all_info_widget.dart';
import 'map_bottom_destination_info_widget.dart';

final Logger _logger = CustomLogger.logger;

/// ## 전체적은 Map 의 간략한 정보 및 목적지와 출발지에 대한 간략한 정보 표기를 위한 Widget
class MapBottomSheetWidget extends StatefulWidget {
  final TourLocationModel destination;
  final List<MeetAddressModel> startingPointList;
  final int viewMaxCount;
  final List<MeetMarkerModel> markerModel;

  const MapBottomSheetWidget(
      {super.key,
      required this.destination, // 목적지
      required this.startingPointList, // 출발지들,
      required this.viewMaxCount,
      required this.markerModel});

  @override
  State<StatefulWidget> createState() => _MapBottomSheetView();

}

class _MapBottomSheetView extends State<MapBottomSheetWidget> {
  int _initViewCount = 1;
  int _maxHeight = 150;
  @override
  void initState() {
    _logger.i('[ _MapBottomSheetView ] initState!');
  }
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
        height: _maxHeight + 10,
        width: double.infinity,
        child: Stack(
          children: [
            _bottomSheetContent(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                        visible: _initViewCount == 1 ? false : true,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_initViewCount != 1) {
                                _initViewCount--;
                              } else {
                                return;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 30,
                          ),
                        )
                    ),
                    Visibility(
                        visible: _initViewCount == widget.viewMaxCount ? false : true,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (initViewCount != widget.viewMaxCount) {
                                _initViewCount++;
                              } else {
                                return;
                              }
                            });
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

  Widget _bottomSheetContent() {
    switch(_initViewCount) {
      case 1: // 1 -> 전체 정보
        {
          return MapBottomAllInfoWidget(
            destination: widget.destination,
            startingPointList: widget.startingPointList,
            markerModel: widget.markerModel,
          );
        }
      case 2: // 2 -> 목적지 정보
        {
          return MapBottomDestinationInfoWidget(
            destination: widget.destination,
          );
        }
      default: // 1, 2를 제외한 기본 -> 출발지 정보들
        {
          return Container(

          );
        }


    }

  }
}
