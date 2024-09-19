import 'package:flutter/material.dart';

import '../../../../main/common/component/widget/honey_progress_indicator.dart';

class PlannerLoadingWidget extends StatelessWidget {
  const PlannerLoadingWidget({super.key});

  //todo 수정예정
  //text 입력받아
  // ~~가 로딩중입니다. 잠시만 기다려주세요
  //로딩이미지

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: HoneyProgressIndicator()),
    );
  }
}