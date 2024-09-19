import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/theme/constant/app_icons.dart';

/// # 벌꿀 모양 Progress Indicator
class HoneyProgressIndicator extends StatelessWidget {
  const HoneyProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(child: LottieBuilder.asset(AppIcons.loadingLottie, width: 150, height: 150,)),
    );
  }
}
