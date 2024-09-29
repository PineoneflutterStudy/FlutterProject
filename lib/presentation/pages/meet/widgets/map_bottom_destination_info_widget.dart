import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../domain/model/display/meet/tour_location.model.dart';

/// ## Map Bottom Sheet No.2 목적지 간단 정보
class MapBottomDestinationInfoWidget extends StatelessWidget{
  final TourLocationModel destination;
  const MapBottomDestinationInfoWidget ({
    super.key,
    required this.destination
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
                  Image.asset(AppIcons.mapMungHoney, width: 35, height: 35),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 210,
                    child: Text(
                      '${destination.title}',
                      style: TextStyle(
                          fontSize: 35,
                          color: AppColors.black
                      ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () async {
                      /*final Uri baseUrl = Uri.parse(
                          'https://map.kakao.com/?target=car&sName=&eName=${destination.title}');*/
                      final Uri baseUrl = Uri.parse(
                          'kakaomap://look?p=${destination.mapy},${destination.mapx}');
                      await launchUrl(baseUrl);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.carrot, width: 0.5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(AppIcons.iconMapRed, width: 20, height: 20,),
                          Text('장소로 이동', style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '${destination.addr1}',
                    style: TextStyle(
                        fontSize: 23
                    ),
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