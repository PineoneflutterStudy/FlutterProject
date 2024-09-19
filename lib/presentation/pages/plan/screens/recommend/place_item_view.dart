import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/utils/db_key.dart';
import '../../../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import '../../../../../domain/model/display/plan/place.model.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import '../../dialog/add_place_popup.dart';
import '../../utils/plan_util.dart';

/// 추천 장소 Item View
class PlaceItemView extends StatefulWidget {
  final Place place;
  final bool isRcmnPage;
  final int radius;
  final String sort;

  const PlaceItemView({required this.place, required this.isRcmnPage,required this.radius, required this.sort, super.key});

  @override
  State<PlaceItemView> createState() => _PlaceItemViewState();
}

class _PlaceItemViewState extends State<PlaceItemView> with PlanUtil{
  bool isLiked = false;
  final firestore = FirebaseFirestoreUtil();
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
        widget.isRcmnPage ? _showAddPlanPopup(context, widget.place) : _showSelectStartPlacePopup(context, widget.place)
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
                        Text(widget.place.placeName ?? '', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, maxLines: 1),
                        SizedBox(width: 8), // 두 텍스트 사이의 간격
                        Expanded(child: Text(getLastTwoCategories(widget.place.categoryName ?? ''),
                                style: TextStyle(color: AppColors.contentTertiary, fontSize: 16), overflow: TextOverflow.ellipsis, maxLines: 1)),
                      ],
                    ),
                    //주소
                    Row(
                      children: [
                        if(widget.place.distance.isNotEmpty)
                          Image.asset(AppIcons.iconMapRed, width: 8, height: 8),
                        if(widget.place.distance.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 3, 5, 0),
                            child: Text(formatDistance(widget.place.distance), style: TextStyle(color: AppColors.error)),
                          ),
                        if (widget.place.addressName.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                            child: Text(widget.place.addressName, style: TextStyle(fontSize: 20), overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                      ],
                    ),
                    //전화번호
                    if ((widget.place.phone ?? '').isNotEmpty)
                      Row(
                        children: [
                          Image.asset(AppIcons.iconTelecomBlue, width: 12, height: 12),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(3, 2, 0, 0),
                            child: Text(': ${widget.place.phone ?? ''}',
                                style: TextStyle(fontSize: 20, color: AppColors.blue),
                                overflow: TextOverflow.ellipsis, maxLines: 1),
                          ),
                        ],
                      ),
                    //이동시간
                    if(widget.place.walkTravelTime.isNotEmpty || widget.place.carTravelTime.isNotEmpty)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if(widget.place.walkTravelTime.isNotEmpty)
                            buildWalkTravelTime(widget.place.walkTravelTime),
                          SizedBox(width: 5),
                          if (widget.place.carTravelTime.isNotEmpty)
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
                    icon: Image.asset(isLiked ? AppIcons.iconFullHeart : AppIcons.iconEmptyHeart, width: 20, height: 20),
                    onPressed: () {
                      isLiked ? firestore.deleteDocument(placeDocRef!) : firestore.setDocument(placeDocRef!, widget.place.toJson());
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

  Future<void> _gotoDetailPage(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomLogger.logger.e('Could not launch $uri');
      CommonUtils.showToastMsg('상세페이지 이동 실패\n다시 시도해주세요.');
    }
  }

  void _showAddPlanPopup(BuildContext context, Place place) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AddPlacePopup(place: place),
    ).then((result) {
      if (result != null) {
        final selectedTime = result['time'].toString();
        final selectedTransportation = result['transportation'].toString();

        context.pop({
          'selectedTime': selectedTime,
          'selectedTransportation': selectedTransportation,
          'distance' : widget.place.distance,
          'travel_time' : getTravelTime(widget.place.distance, selectedTransportation),
          'place_name' : widget.place.placeName,
          'place_id': widget.place.placeId,
          'cur_address_info' : Address(
            addressName: widget.place.placeName,
            x: widget.place.x,
            y: widget.place.y,
            radius: widget.radius,
            sort: widget.sort
          )
        });
      }
    });
  }

  _showSelectStartPlacePopup(BuildContext context, Place place) {
    CommonDialog.confirmDialog(
      context: context,
      title: '${addParticle(place.placeName)} \n출발지로 지정하시겠습니까?',
      btn1Text: '아니요',
      btn2Text: '네',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => {
        context.pop(),
        context.pop({
          'address_info': Address(
            addressName: widget.place.placeName,
            x: widget.place.x,
            y: widget.place.y,
            radius: widget.radius,
            sort: widget.sort,
          ),
          'place_id' : place.placeId
        })
      },
    );
  }
}