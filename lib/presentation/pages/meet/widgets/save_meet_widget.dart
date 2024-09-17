import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/location_db.model.dart';
import 'save_meet_list_item_widget.dart';

final Logger _logger = CustomLogger.logger;
class SaveMeetWidget extends StatelessWidget {
  final List<LocationDbModel> locationsInfo;
  final void Function()? onAddMeetLocation; // + 약속 추가하기 버튼 입력
  final void Function()? onBtnAllDelete; // delete 모두 삭제 버튼
  const SaveMeetWidget ({
    super.key,
    required this.locationsInfo,
    required this.onAddMeetLocation,
    required this.onBtnAllDelete,
  });

  @override
  Widget build(BuildContext context) {
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
            child: SpeedDial(
              animatedIcon: AnimatedIcons.menu_close,
              visible: true,
              curve: Curves.bounceIn,
              backgroundColor: AppColors.primary,
              children: [
                SpeedDialChild(
                    child: const Icon(Icons.add, color: AppColors.onPrimary),
                    label: "약속 추가하기",
                    labelStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColors.blackPolyLine80,
                        fontSize: 13.0),
                    backgroundColor: AppColors.primary,
                    labelBackgroundColor: AppColors.primary,
                    onTap: onAddMeetLocation),
                SpeedDialChild(
                  child: const Icon(
                    Icons.delete_forever,
                    color: AppColors.onPrimary,
                  ),
                  label: "모두 삭제",
                  backgroundColor: AppColors.primary,
                  labelBackgroundColor: AppColors.primary,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: AppColors.blackPolyLine80, fontSize: 13.0),
                  onTap: onBtnAllDelete,
                )
                ,SpeedDialChild(
                  child: const Icon(
                    Icons.delete,
                    color: AppColors.onPrimary,
                  ),
                  label: "삭제",
                  backgroundColor: AppColors.primary,
                  labelBackgroundColor: AppColors.primary,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: AppColors.blackPolyLine80, fontSize: 13.0),
                  onTap: () {
                    // 모두 삭제 확인 Dialog 출력 후 모두 삭제 진행
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
