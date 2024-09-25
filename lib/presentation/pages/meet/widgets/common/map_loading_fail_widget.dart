import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_icons.dart';

/// # 맵 로딩 시 보여주는 화면
/// ### 귀여운 벌 사진 / 웨이팅 문구 / CircularProgress
class MapLoadingFailWidget extends StatelessWidget {
  const MapLoadingFailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(AppIcons.mangmungNothing, width: 250, height: 250),
          Text(
            '중간지점을 찾지 못했습니다.\n다시 시도해주세요.',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    ));
  }
}
