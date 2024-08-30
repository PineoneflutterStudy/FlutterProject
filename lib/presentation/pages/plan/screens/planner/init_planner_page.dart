import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';
import '../../../../main/common/component/dialog/login_popup.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';

/// ### plan메뉴 초기 화면
class InitPlannerPage extends StatelessWidget with PlanUtil{
  final bool isLogin;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;

  InitPlannerPage({super.key, required this.isLogin, required this.addressBloc, required this.plannerBloc});

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
                  TextSpan(text: "개꿀트립", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  TextSpan(text: " 과 함께 \n여행계획 세우러 떠나 볼까요~?", style: TextStyle(fontSize: 25)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              if (isLogin) {
                final result = await showGoPlanPopup(context: context, addressBloc: addressBloc);
                if (result != null && result.containsKey('planner')) {
                  Planner planner = result['planner']!;
                  plannerBloc.add(PlannerEvent.addPlanner(planner));
                }
              } else {
                await showDialog(context: context, builder: (context) => LoginPopup());
              }
            },
            child: const Icon(Icons.add_circle_sharp, color: AppColors.primary, size: 40)
          ),
        ],
      ),
    );
  }
}