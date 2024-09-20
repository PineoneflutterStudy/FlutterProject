import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/like/region_select.dart';
import '../../bloc/region_filter_bloc.dart';

class RegionSelectItemWidget extends StatelessWidget {

  final int stepNumber;
  final String stepTitle;
  final String region;
  final bool isSelected;
  final int currentStep;

  const RegionSelectItemWidget({
    super.key,
    required this.stepNumber,
    required this.stepTitle,
    required this.region,
    required this.isSelected,
    required this.currentStep,
  });

  Color _setColor() {
    print('step Number -> ${stepNumber} / step Current -> ${currentStep}');
    if (stepNumber > currentStep) {
      return AppColors.onSurfaceVariant;
    } else {
      return AppColors.primary;
    }
  }

  Widget _setIcon() {
    if (stepNumber < currentStep) {
      return Icon(Icons.check,
        color: AppColors.white,
        size: 16,
      );
    } else {
      return Text('${stepNumber}',
        style: TextStyle(
            color: AppColors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegionFilterBloc, RegionFilterState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: _setColor(),
                  ),
                  width: 30,
                  height: 30,
                  child: Center(
                    child: _setIcon(),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(stepTitle,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: AppColors.primary, width: 1.5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5.0
                ),
                child: Center(
                  child: Text((isSelected)
                      ? region
                      : '미선택',
                    style: TextStyle(
                      color: (isSelected)
                          ? AppColors.black
                          : Colors.grey,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
