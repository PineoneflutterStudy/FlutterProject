import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../domain/model/display/meet/meet_address.model.dart';
import '../../../../domain/model/display/meet/meet_marker.model.dart';
import '../../../../domain/model/display/meet/tour_location.model.dart';

class MapBottomStartingInfoWidget extends StatelessWidget {
  final MeetAddressModel startingInfo;
  final MeetMarkerModel markerModel;
  final TourLocationModel destination;
  final int viewCount;

  const MapBottomStartingInfoWidget({
    super.key,
    required this.startingInfo,
    required this.markerModel,
    required this.destination,
    required this.viewCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 10, right: 30, left: 35),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(markerModel.mapMarkerIcon, width: 35, height: 35),
                  SizedBox(
                    width: 5,
                  ),
                  Text('출발지 ${viewCount}',
                      style: TextStyle(fontSize: 45, color: AppColors.black),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () async {
                      //  kakaomap://route?sp=37.53723,127.00551&ep=37.49795,127.027637&by=CAR
                      /*final Uri baseUrl = Uri.parse(
                          'kakaomap://look?p=${startingInfo.longitude},${startingInfo.latitude}');*/
                      final Uri baseUrl = Uri.parse(
                          'kakaomap://route?sp=${startingInfo.latitude},${startingInfo.longitude}&ep=${destination.mapy},${destination.mapx}&by=CAR');
                      await launchUrl(baseUrl);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.carrot, width: 0.5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            AppIcons.iconMapRed,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            '길찾기 이동',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '${startingInfo.address}',
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
