import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
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
            onTap: () => _showLoginPopup(context) ,
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

  void _showLoginPopup(BuildContext context) {
    CommonDialog.confirmDialog(
      context: context,
      title: '로그인이 필요한 서비스 입니다.',
      content: '서비스이용을 위해 로그인이 필요합니다.\n로그인 하시겠습니까?',
      btn1Text: '취소',
      btn2Text: '확인',
      onBtn1Pressed: (context) => context.pop(),
      onBtn2Pressed: (context) => context.pushNamed('login').then((result){
          context.pop();
          plannerBloc.add(PlannerEvent.checkLoginState());
        },
      ),
    );
  }
}