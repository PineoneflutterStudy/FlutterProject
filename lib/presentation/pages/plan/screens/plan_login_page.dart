import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../main/common/component/dialog/login_popup.dart';
import '../../../main/common/component/widget/appbar.dart';
import '../bloc/planner_bloc/planner_bloc.dart';
import '../utils/plan_util.dart';

/// ### plan메뉴 초기 화면
class PlanLoginPage extends StatelessWidget with PlanUtil{
  final PlannerBloc plannerBloc;

  PlanLoginPage({super.key, required this.plannerBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "나만의 여행플래너"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "로그인", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: AppColors.melon),),
                  TextSpan(text: "이 필요한 서비스 입니다.", style: TextStyle(fontSize: 28)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              await showDialog(context: context, builder: (context) => LoginPopup())
                  .then((result)=> plannerBloc.add(PlannerEvent.checkLoginState()));
            },
            child: Icon(Icons.login_rounded, color: AppColors.melon, size: 40, shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(3.0, 3.0),
              ),
            ],)
          ),
        ],
      ),
    );
  }
}