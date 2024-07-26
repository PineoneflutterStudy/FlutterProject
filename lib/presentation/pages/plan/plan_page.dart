import 'package:flutter/material.dart';
import 'screens/planner/planner_page.dart';

import 'screens/recommend_list/recommended_list_page.dart';
import 'widgets/empty_plan_widget.dart';

class PlanPage extends StatefulWidget {
  final String? location;
  const PlanPage({this.location, super.key});

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
    if(widget.location == null){
      if (_isLogin) {
        return PlannerPage();
      } else {
        return EmptyPlanWidget();
      }
    }else{
      return RecommendedListPage(widget.location!);
    }
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
