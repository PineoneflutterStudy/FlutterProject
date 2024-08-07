import 'package:flutter/material.dart';
import '../../../core/utils/firebase/firebase_auth_util.dart';
import 'screens/planner/planner_page.dart';

import 'widgets/empty_plan_widget.dart';

/// ### Plan 메뉴 MainActivity
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  final auth = FirebaseAuthUtil();
  bool _isLogin = false;
  @override
  void initState() {
    super.initState();
    _CheckLoginState();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLogin) {
      return PlannerPage();
    } else {
      return EmptyPlanWidget();
    }
  }

  void _CheckLoginState() {
    setState(() {
      _isLogin = (auth.getCurrentUser() != null);
    });
  }
}
