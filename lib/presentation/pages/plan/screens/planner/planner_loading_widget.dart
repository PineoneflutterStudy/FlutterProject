import 'package:flutter/material.dart';

import '../../../../main/common/component/widget/appbar.dart';

class PlannerLoadingWidget extends StatelessWidget {
  const PlannerLoadingWidget({super.key});

  //todo 수정예정
  //text 입력받아
  // ~~가 로딩중입니다. 잠시만 기다려주세요
  //로딩이미지

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}