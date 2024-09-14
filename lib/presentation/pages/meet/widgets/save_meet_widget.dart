import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/location_db.model.dart';
import 'save_meet_list_item_widget.dart';

final Logger _logger = CustomLogger.logger;
class SaveMeetWidget extends StatelessWidget {
  final List<LocationDbModel> locationsInfo;
  const SaveMeetWidget ({
    super.key,
    required this.locationsInfo,
  });

  @override
  Widget build(BuildContext context) {
    _logger.i('저장된 데이터 확인 -> ${locationsInfo[0].starting_point_list}'); // 저장된 데이터들 보여준다...
    _logger.i('저장된 데이터 갯수 확인 -> ${locationsInfo.length}'); // 현재 저장 데이터 1개
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: locationsInfo.length,
          itemBuilder: (context, index) {
            return SaveMeetListItemWidget(locationModel: locationsInfo[index]);
          },
        ),
        Positioned(
          bottom: 16.0, // 하단에서의 거리
          right: 16.0, // 우측에서의 거리
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white, // 배경색 (필요에 따라 조정)
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.menu_outlined, size: 30),
              onPressed: () {
                // 아이콘 버튼 클릭 시 동작
              },
            ),
          ),
        ),
      ],
    );
  }
}