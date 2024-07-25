import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../domain/model/display/place/place.model.dart';

class PlaceItemView extends StatelessWidget {
  final Place place;

  const PlaceItemView(this.place, {super.key});

  //todo 상세페이지 크롤링 > 이미지, 리뷰, 후기 정보 받아오기

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      color: AppColors.onPrimary,
      borderOnForeground: true,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(place.placeName ?? '', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, maxLines: 1),
                      SizedBox(width: 8), // 두 텍스트 사이의 간격
                      Expanded(child: Text(getLastTwoCategories(place.categoryName ?? ''), style: TextStyle(color: AppColors.contentTertiary),overflow: TextOverflow.ellipsis, maxLines: 1)),
                    ],
                  ),
                  if ((place.addressName??'').isNotEmpty)
                    Text('주소 : ${place.addressName ?? ''}', style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis, maxLines: 1),
                  if ((place.phone??'').isNotEmpty)
                    Text('전화 : ${place.phone ?? ''}' , style: TextStyle(fontSize: 16, color: AppColors.blue),overflow: TextOverflow.ellipsis, maxLines: 1),
                  Text.rich(TextSpan(
                      children: [
                        TextSpan(text: '이전 목적지와 ', style: TextStyle(color: AppColors.contentTertiary)),
                        TextSpan(text: '${place.distance ?? ''}m', style: TextStyle(color: AppColors.error)),
                        TextSpan(text: ' 거리', style: TextStyle(color: AppColors.contentTertiary)),
                      ],
                  ),),
                ],
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.contentFourth), borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6), // 모서리 둥글게
              child: Image.asset(AppIcons.ImgBeeLove, width: 100, height: 100, fit: BoxFit.cover),
            ),
          ),
        ],
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
}