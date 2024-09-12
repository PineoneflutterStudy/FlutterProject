import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../../plan/utils/plan_util.dart';
import '../../bloc/like_place/like_place_bloc.dart';

class LikePlaceItemWidget extends StatefulWidget {

  final Place place;

  const LikePlaceItemWidget({
    super.key,
    required this.place,
  });

  @override
  State<LikePlaceItemWidget> createState() => _LikePlaceItemWidgetState();
}

class _LikePlaceItemWidgetState extends State<LikePlaceItemWidget> with PlanUtil {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {

      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 7),
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
                    //장소 이름, 카테고리
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(widget.place.placeName ?? '', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, maxLines: 1),
                        SizedBox(width: 8), // 두 텍스트 사이의 간격
                        Expanded(child: Text(getLastTwoCategories(widget.place.categoryName ?? ''),
                            style: TextStyle(color: AppColors.contentTertiary), overflow: TextOverflow.ellipsis, maxLines: 1)),
                      ],
                    ),
                    //주소
                    Row(
                      children: [
                        Image.asset(AppIcons.iconMapRed, width: 8, height: 8),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 3, 5, 0),
                          child: Text(formatDistance(widget.place.distance), style: TextStyle(color: AppColors.error)),
                        ),
                        if ((widget.place.addressName ?? '').isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text('${widget.place.addressName ?? ''}', style: TextStyle(fontSize: 18), overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                      ],
                    ),
                    //전화번호
                    if ((widget.place.phone ?? '').isNotEmpty)
                      Row(
                        children: [
                          Image.asset(AppIcons.iconTelecomBlue, width: 10, height: 10),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 2, 0, 0),
                            child: Text(': ${widget.place.phone ?? ''}',
                                style: TextStyle(fontSize: 18, color: AppColors.blue),
                                overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                        ],
                      ),
                    //이동시간
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildWalkTravelTime(widget.place.walkTravelTime),
                        SizedBox(width: 5),
                        buildCarTravelTime(widget.place.carTravelTime),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.more_horiz_sharp),
                    onPressed: () => (widget.place.placeUrl ?? '').isNotEmpty
                        ? _gotoDetailPage(context, widget.place.placeUrl)
                        : CommonUtils.showToastMsg('등록된 상세페이지가 없습니다.'),
                  ),
                  IconButton(
                    icon: Image.asset(true ? AppIcons.iconFullHeart : AppIcons.iconEmptyHeart, width: 20, height: 20),
                    onPressed: () {
                      String placeId = widget.place.placeId;
                      context.read<LikePlaceBloc>().add(LikePlaceEvent.delete(placeId));
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


  /**
   * 상세 페이지 이동
   */
  Future<void> _gotoDetailPage(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomLogger.logger.e('Could not launch $uri');
      CommonUtils.showToastMsg('상세페이지 이동 실패\n다시 시도해주세요.');
    }
  }
}
