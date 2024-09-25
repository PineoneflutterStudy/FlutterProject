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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/mangmung_img2.PNG', width: 230, height: 230),
          SizedBox(height: 5),
          Text('로그인이 필요한 페이지 입니다.', style: TextStyle(fontSize: 32)),
          SizedBox(height: 5),
          IconButton(
            icon: Icon(Icons.login_rounded, size: 38),
            onPressed: () => _showLoginPopup(context),
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