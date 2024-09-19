import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../domain/model/display/plan/planner.model.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import '../../utils/plan_util.dart';

/// ### plan메뉴 초기 화면
class EmptyPlannerPage extends StatelessWidget with PlanUtil{
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;

  EmptyPlannerPage({super.key, required this.addressBloc, required this.plannerBloc});

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
                  TextSpan(text: "댕꿀트립", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  TextSpan(text: " 과 함께 \n여행계획 세우러 떠나 볼까요~?", style: TextStyle(fontSize: 27)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () async {
              final result = await showGoPlanPopup(context: context, addressBloc: addressBloc,index: 0);
              if (result != null && result.containsKey('planner')) {
                Planner planner = result['planner']!;
                plannerBloc.add(PlannerEvent.addPlanner(planner));
              }
            },
            child: Image.asset(AppIcons.mangmung3, width: 70, height: 70),
          ),
        ],
      ),
    );
  }
}