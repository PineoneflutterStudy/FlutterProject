import 'package:flutter/material.dart';

import '../../main/common/appbar.dart';

class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Center(
          child: Text(
            'plan_page',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
    );
  }
}
