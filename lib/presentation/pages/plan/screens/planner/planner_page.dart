import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../domain/usecase/planner/planner.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../dialog/go_plan_popup.dart';

/// ### Plan 메뉴 로그인 시 화면
/// ##### 여행플랜 짜기 화면
class PlannerPage extends StatelessWidget {
  const PlannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddressBloc(locator<PlannerUsecase>()),
      child: PlannerPageView(),
    );
  }
}
class PlannerPageView extends StatefulWidget {
  const PlannerPageView({super.key});

  @override
  State<PlannerPageView> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPageView> {
  String _destination = '';
  String _arrivalTime = '';

  @override
  void initState() {
    super.initState();
  }
  Future<void> _showGoPlanPopup() async {
    final result = await showDialog<Map<String, String>>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return BlocProvider.value(
          value: context.read<AddressBloc>(),
          child: GoPlanPopup(),
        );
      },
    );

    if (result != null) {
      setState(() {
        _destination = result['destination'] ?? '';
        _arrivalTime = result['arrivalTime'] ?? '';
      });
      print('Destination: $_destination');
      print('Arrival Time: $_arrivalTime');
      // firebase 저장
      // 여행계획 추가로 수정
      context.pushNamed('rcmn', queryParameters: {'location' : _destination});
    }
  }

  @override
  Widget build(BuildContext context) {
    //todo Firebase planner data 없을때 / 있을때 화면 구현
    return Scaffold(
      appBar: MainAppbar(title: '나만의 여행플래너'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _showGoPlanPopup,
              child: Icon(
                Icons.add_circle_sharp,
                color: Colors.amberAccent,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
