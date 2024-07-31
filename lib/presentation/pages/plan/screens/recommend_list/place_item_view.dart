import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../domain/model/display/place/place.model.dart';

class PlaceItemView extends StatelessWidget {
  final Place place;

  const PlaceItemView(this.place, {super.key});

  @override
  Widget build(BuildContext context) {
    double distance = double.parse(place.distance ?? '0');

    String formattedDistance;
    if (distance >= 1000) {
      // 1000 이상일 경우 km 단위로 변환
      double distanceInKm = distance / 1000;
      formattedDistance = NumberFormat('#,##0.00').format(distanceInKm) + ' km';
    } else {
      // 1000 이하일 경우 m 단위로 표기
      formattedDistance = distance.toStringAsFixed(0) + ' m';
    }

    return InkWell(
      onTap: () => {
        //todo 여행 계획 추가 팝업
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 7, horizontal: 13),
        color: AppColors.onPrimary,
        borderOnForeground: true,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Container(
          padding: EdgeInsets.fromLTRB(25,15,20,15),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(place.placeName ?? '', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis, maxLines: 1),
                        SizedBox(width: 8), // 두 텍스트 사이의 간격
                        Expanded(child: Text(getLastTwoCategories(place.categoryName ?? ''), style: TextStyle(color: AppColors.contentTertiary), overflow: TextOverflow.ellipsis, maxLines: 1)),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(AppIcons.iconMapRed, width: 8, height: 8),
                        Padding(padding: const EdgeInsets.fromLTRB(3, 3, 5, 0),
                          child: Text(formattedDistance, style: TextStyle(color: AppColors.error)),
                        ),
                        if ((place.addressName ?? '').isNotEmpty)
                          Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text('${place.addressName ?? ''}', style: TextStyle(fontSize: 18), overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                      ],
                    ),
                    if ((place.phone ?? '').isNotEmpty)
                      Row(
                        children: [
                          Image.asset(AppIcons.iconTelecomBlue, width: 10, height: 10),
                          Padding(padding: const EdgeInsets.fromLTRB(3, 2, 0, 0),
                            child: Text(': ${place.phone ?? ''}', style: TextStyle(fontSize: 18, color: AppColors.blue), overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz_sharp),
                    onPressed: () => (place.placeUrl ?? '').isNotEmpty ? _gotoDetailPage(context) : Utils.showToastMsg('등록된 상세페이지가 없습니다.'),
                  ),
                  IconButton(
                    icon: SvgPicture.asset(AppIcons.navLike, width: 20, height: 20),
                    onPressed: () {
                      //todo 좋아요 버튼
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String getLastTwoCategories(String categoryName) {
    List<String> categories = categoryName.split(' > ');
    if (categories.length > 1) {
      return categories.sublist(categories.length - 2).join(' > ');
    } else {
      return categoryName;
    }
  }

  Future<void> _gotoDetailPage(BuildContext context) async {
    final Uri uri = Uri.parse(place.placeUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomLogger.logger.e('Could not launch $uri');
      Utils.showToastMsg('상세페이지 이동 실패\n다시 시도해주세요.');
    }
  }
}