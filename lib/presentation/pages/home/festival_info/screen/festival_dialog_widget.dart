import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../domain/model/display/home/tour_detail_info.model.dart';
import '../../../../../domain/model/display/home/tour_festival_info.model.dart';
import '../festival_util.dart';

class FestivalDialogWidget extends StatelessWidget {
  TourFestivalInfoModel? festivalInfoDto;
  TourDetailInfoModel? detailDto;
  final double SUB_SIZE = 25;

  FestivalDialogWidget(this.festivalInfoDto, this.detailDto);

  @override
  Widget build(BuildContext context) {
    return festivalDialogWidget();
  }

  Widget festivalDialogWidget() {
    var address = '';
    if (festivalInfoDto?.addr1.isNotEmpty == true)
      address = festivalInfoDto?.addr1 ?? '';
    else
      address = detailDto?.eventplace ?? '';

    return Dialog(
      insetPadding: EdgeInsets.fromLTRB(0, 200, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              child: contentImageWidget(festivalInfoDto?.firstimage ?? ''),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    festivalInfoDto?.title ?? '',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 40, height: 0.8),
                  ),
                  dialogSubText(AppIcons.iconBee, address),
                  dialogSubText(AppIcons.iconHoneyHexagon, FestivalUtil.getDate(festivalInfoDto)),
                  dialogSubText(AppIcons.iconHoneyDrop, FestivalUtil.stripHtml(detailDto?.usetimefestival ?? ''),),
                  dialogSubText(AppIcons.iconHoneyStick, FestivalUtil.stripHtml(detailDto?.playtime ?? '')),
                  dialogSubText(AppIcons.iconHoneyBottle, festivalInfoDto?.tel ?? '',)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding dialogSubText(String iconPath, String comment) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(children: [
        Image.asset(
          iconPath,
          width: SUB_SIZE + 10,
          height: SUB_SIZE + 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Container(
            width: 300,
            child: Text(
              comment,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: SUB_SIZE,
                height: 0.8,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget contentImageWidget(String imgUrl) {
    if (imgUrl.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppIcons.iconBeeHome, width: 70, height: 70),
          Text(
            '이미지 준비중입니다.',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: AppColors.black),
          )
        ],
      );
    } else {
      return Image.network(imgUrl,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          headers: const {
            "User-Agent":
                "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
          });
    }
  }
}