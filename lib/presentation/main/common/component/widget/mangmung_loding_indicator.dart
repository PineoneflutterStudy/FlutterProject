import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/theme/constant/app_icons.dart';

class MangmungLoadingIndicator extends StatelessWidget {
  final double size;
  const MangmungLoadingIndicator({super.key, this.size = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: LottieBuilder.asset(AppIcons.mangmungLoadingLottie, width: size, height: size,),
      ),
    );
  }
}
