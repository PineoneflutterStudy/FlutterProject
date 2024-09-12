import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/theme/constant/app_colors.dart';


/**
 * 찜목록 화면 로딩 Widget
 */
class LikeLoadingPage extends StatelessWidget {
  const LikeLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: AppColors.white,
      child: Center(
        child: LottieBuilder.asset(
            'assets/images/honey_progress_indicator.json'),
      ),
    );
  }
}
