import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/DBkey.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../../../../domain/model/display/place/place.model.dart';
import '../../utils/plan_util.dart';

/// 추천 장소 Item View
class PlaceItemView extends StatefulWidget {
  final Place place;

  const PlaceItemView(this.place, {super.key});

  @override
  State<PlaceItemView> createState() => _PlaceItemViewState();
}

class _PlaceItemViewState extends State<PlaceItemView> {
  bool isLiked = false;
  final firestore = FirebaseFirestoreUtil();
  final planUtil = PlanUtil();
  DocumentReference? placeDocRef;
  @override
  void initState() {
    super.initState();
    _initializePlaceDocRef();
  }

  Future<void> _initializePlaceDocRef() async {
    placeDocRef = await firestore.getCollectionDocRef(DBKey.DB_LIKES, widget.place.placeId);
    if (placeDocRef != null) {
      bool documentExists = await firestore.checkDocumentExistsFromRef(placeDocRef!);
      setState(() {
        isLiked = documentExists;
      });
    } else {
      CustomLogger.logger.e("placeDocRef is null : ${widget.place.placeId}");
    }
  }

  @override
  Widget build(BuildContext context) {
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
                        Text(widget.place.placeName ?? '',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis, maxLines: 1),
                        SizedBox(width: 8), // 두 텍스트 사이의 간격
                        Expanded(
                            child: Text(planUtil.getLastTwoCategories(widget.place.categoryName ?? ''),
                                style: TextStyle(color: AppColors.contentTertiary),
                                overflow: TextOverflow.ellipsis, maxLines: 1)),
                      ],
                    ),
                    //주소
                    Row(
                      children: [
                        Image.asset(AppIcons.iconMapRed, width: 8, height: 8),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 3, 5, 0),
                          child: Text(planUtil.formatDistance(widget.place.distance), style: TextStyle(color: AppColors.error)),
                        ),
                        if ((widget.place.addressName ?? '').isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text('${widget.place.addressName ?? ''}', style: TextStyle(fontSize: 18),
                                overflow: TextOverflow.ellipsis, maxLines: 1),
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
                        Icon(Icons.directions_walk, color: AppColors.positive , size: 13),
                        SizedBox(width: 2),
                        Text('${planUtil.getWalkTravelTime(widget.place.distance)}', style: TextStyle(fontSize: 16, color: AppColors.positive)),
                        SizedBox(width: 5),
                        Icon(Icons.directions_car, color: AppColors.error, size: 13),
                        SizedBox(width: 3),
                        Text('${planUtil.getCarTravelTime(widget.place.distance)}', style: TextStyle(fontSize: 16, color: AppColors.error),),
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
                        ? _gotoDetailPage(context)
                        : CommonUtils.showToastMsg('등록된 상세페이지가 없습니다.'),
                  ),
                  IconButton(
                    icon: Image.asset(isLiked ? AppIcons.iconFullHeart : AppIcons.iconEmptyHeart, width: 20, height: 20),
                    onPressed: () {
                      if (isLiked) {
                        firestore.deleteDocument(placeDocRef!);
                      } else {
                        firestore.setDocument(placeDocRef!, widget.place.toJson());
                      }
                      setState(() {
                        isLiked = !isLiked;
                      });
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

  Future<void> _gotoDetailPage(BuildContext context) async {
    final Uri uri = Uri.parse(widget.place.placeUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomLogger.logger.e('Could not launch $uri');
      CommonUtils.showToastMsg('상세페이지 이동 실패\n다시 시도해주세요.');
    }
  }
}