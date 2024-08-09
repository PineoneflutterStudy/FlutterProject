import 'package:flutter/material.dart';

import '../../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../main/common/component/widget/appbar.dart';
import '../../../main/common/component/dialog/login_popup.dart';
import '../screens/planner/planner_page.dart';

/// ### Plan메뉴 비로그인 시 첫화면
class EmptyPlanWidget extends StatelessWidget {
  const EmptyPlanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuthUtil();

    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if(_auth.isLoggedIn()){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PlannerPage()));
              }else{
                showDialog(context: context, builder: (context) => LoginPopup());
              }
            },
            child: Icon(Icons.add_circle_sharp, color: Colors.amberAccent, size: 40,),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '개꿀트립', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                TextSpan(text: ' 과 함께 \n여행계획 세우러 떠나 볼까요~?', style: TextStyle(fontSize: 25)),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
