import 'package:flutter/material.dart';

import '../../main/common/appbar.dart';
import 'screens/planner_page.dart';
import 'widgets/empty_plan_widget.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  bool _isLogin = false;

  @override
  void initState() {
    super.initState();
    _CheckLoginState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: _isLogin? PlannerPage() : EmptyPlanWidget(),
    );
  }

  void _CheckLoginState() {
    var isLogin = true;
    //todo login check 로직
    //todo user 정보 불러오기

    setState(() {
      _isLogin = isLogin;
    });

  }
}
