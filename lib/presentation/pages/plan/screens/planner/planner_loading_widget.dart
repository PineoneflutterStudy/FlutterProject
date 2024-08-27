import 'package:flutter/material.dart';

import '../../../../main/common/component/widget/appbar.dart';

class PlannerLoadingWidget extends StatelessWidget {
  const PlannerLoadingWidget({super.key});

  //todo 수정예정
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}