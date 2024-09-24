import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/common/fab_item.dart';
import '../../../../domain/model/display/meet/location_db.model.dart';
import '../../../main/common/component/widget/common_fab_widget.dart';
import 'save_meet_list_item_widget.dart';

final Logger _logger = CustomLogger.logger;
class SaveMeetWidget extends StatelessWidget {
  final List<LocationDbModel> locationsInfo;
  final bool isDelete;
  final VoidCallback onAddMeetLocation; // + 약속 추가하기 버튼 입력
  final VoidCallback onBtnAllDelete; // delete 모두 삭제 버튼
  final VoidCallback onBtnDelete; // delete 아이템 개별 삭제 버튼
  const SaveMeetWidget ({
    super.key,
    required this.locationsInfo,
    required this.isDelete,
    required this.onAddMeetLocation,
    required this.onBtnAllDelete,
    required this.onBtnDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: locationsInfo.length,
          itemBuilder: (context, index) {
            return SaveMeetListItemWidget(
                locationModel: locationsInfo[index],
                isDelete: isDelete,
            );
          },
        ),
        CommonFabWidget(
          mainIcon: Icons.edit_note_rounded,
          padding: 20.0,
          fabItems: [
            FabItem(
                icon: Icons.add,
                label: '약속 추가',
                onTap: onAddMeetLocation),
            FabItem(
                icon: Icons.delete_forever,
                label: '삭제',
                onTap: onBtnDelete),
            FabItem(
                icon: Icons.delete_forever,
                label: '모두 삭제',
                onTap: onBtnAllDelete),
          ],
        )
      ],
    );
  }
}
