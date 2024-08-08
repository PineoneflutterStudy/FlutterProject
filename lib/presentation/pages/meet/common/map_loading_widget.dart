import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// # 맵 로딩 시 보여주는 화면
/// ### 귀여운 벌 사진 / 웨이팅 문구 / CircularProgress
class MapLoadingWidget extends StatelessWidget {
  const MapLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LottieBuilder.asset(
            'assets/images/honey_and_bee_lottie_animation.json'),
        Text(
          '중간지점을 찾고 있습니다\n잠시만 기다려 주세요!',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(),
      ],
    ));
  }
}