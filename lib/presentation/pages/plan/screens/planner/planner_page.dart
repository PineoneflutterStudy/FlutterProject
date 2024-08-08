import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../main/common/component/widget/appbar.dart';

/// ### Plan 메뉴 로그인 시 화면
/// ##### 여행플랜 짜기 화면
class PlannerPage extends StatefulWidget {
  const PlannerPage({super.key});

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                //todo 여행계획짜기 팝업
                //todo recommended_list_page에 장소 정보 보내기 구현
                final location = '부산해운대';
                context.pushNamed('rcmn', queryParameters: {'location' : location});
              },
              child: Icon(
                Icons.add_circle_sharp,
                color: Colors.amberAccent,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
