import 'package:flutter/material.dart';

import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';

/// ### Plan 메뉴 로그인 시 화면
/// ##### 여행플랜 짜기 화면
class PlannerPage extends StatefulWidget {
  final String destination;
  final String arrivalTime;
  final AddressBloc addressBloc;

  const PlannerPage({required this.destination, required this.arrivalTime,
    required this.addressBloc, super.key});

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  late String _destination;
  late String _arrivalTime;

  @override
  void initState() {
    super.initState();
    _destination = widget.destination;
    _arrivalTime = widget.arrivalTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Column(
        children: [
          Text('$_destination 여행 1일차'),
          // planner 버튼
          // planner 화면
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: PageView(
                children: [
                  Container(
                    color: Colors.red,
                    child: Center(
                        child: Text('Test Page 1', style: TextStyle(fontSize: 24, color: Colors.white))),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                        child: Text('Test Page 2',
                            style: TextStyle(fontSize: 24, color: Colors.white))),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Center(
                        child: Text('Test Page 3',
                            style: TextStyle(fontSize: 24, color: Colors.white))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
