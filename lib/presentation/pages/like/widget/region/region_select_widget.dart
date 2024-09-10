import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import 'region_select_item_widget.dart';

class RegionSelectWidget extends StatelessWidget {
  final RegionSelectModel selectModel;

  const RegionSelectWidget({
    super.key,
    required this.selectModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(color: AppColors.surfaceVariant, width: 0.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RegionSelectItemWidget(
              stepNumber: 1,
              stepTitle: '광역시/도',
              region: selectModel.major,
              isSelected: selectModel.major.isNotEmpty,
              currentStep: selectModel.current,
            ),
            RegionSelectItemWidget(
              stepNumber: 2,
              stepTitle: '시/군/구',
              region: selectModel.middle,
              isSelected: selectModel.middle.isNotEmpty,
              currentStep: selectModel.current,
            ),
            RegionSelectItemWidget(
              stepNumber: 3,
              stepTitle: '읍/면/동',
              region: selectModel.minor,
              isSelected: selectModel.minor.isNotEmpty,
              currentStep: selectModel.current,
            ),
          ],
        )
      ),
    );
  }
}
