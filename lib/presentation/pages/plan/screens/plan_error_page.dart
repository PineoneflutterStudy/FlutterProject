import 'package:flutter/material.dart';

import '../../../../core/theme/constant/app_icons.dart';
import '../utils/plan_util.dart';

/// ### plan메뉴 초기 화면
class PlanErrorPage extends StatelessWidget with PlanUtil{
  final String title;
  final String? desc;
  final VoidCallback? clickEvent;
  final String? btnText;

  PlanErrorPage({super.key, required this.title, this.desc, this.clickEvent, this.btnText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppIcons.mangmungNothing, width: 250, height: 250),
          Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          if(btnText != null)
            ElevatedButton(
              onPressed: clickEvent,
              child: Text(btnText!),
            ),
        ],
      ),
    );
  }
}