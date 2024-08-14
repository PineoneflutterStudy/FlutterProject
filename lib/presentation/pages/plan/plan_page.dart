import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../routes/route_path.dart';
import '../../../core/utils/DBkey.dart';
import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../domain/usecase/planner/planner.usecase.dart';
import '../../../service_locator.dart';
import '../../main/common/component/dialog/login_popup.dart';
import '../../main/common/component/widget/appbar.dart';
import 'bloc/address_bloc/address_bloc.dart';
import 'utils/plan_util.dart';

/// ### Plan 메뉴 MainActivity
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  final auth = FirebaseAuthUtil();
  final firestore = FirebaseFirestoreUtil();
  final planUtil = PlanUtil();
  bool _isLogin = false;
  List<Map<String, dynamic>>? plannerList = null;
  late AddressBloc _addressBloc;

  @override
  void initState() {
    super.initState();
    _addressBloc = AddressBloc(locator<PlannerUsecase>());
    _checkLoginState();
  }

  @override
  void dispose() {
    _addressBloc.close();
    super.dispose();
  }

  void _checkLoginState() async {
    // 로그인 상태 확인
    bool isLoggedIn = await auth.isLoggedIn();

    setState(() {
      _isLogin = isLoggedIn;
    });

    if (isLoggedIn) {
      await _getPlannerList();
    }
  }

  Future<void> _getPlannerList() async {
    try {
      final list = await firestore.getDocumentsFromCollection(DBKey.DB_PLANNER);
      if (mounted) {
        setState(() {
          plannerList = list;
        });

        if (plannerList != null && plannerList!.isNotEmpty) {
          //todo 수정예정
          final destination = plannerList![0]['destination'] ?? 'default destination';
          final arrivalTime = plannerList![0]['arrivalTime'] ?? 'default time';
          _goPlannerPage(destination, arrivalTime);
        }
      }
    } catch (error) {
      print("Error fetching planner list: $error");
    }
  }

  void _goPlannerPage(String destination, String arrivalTime) {
    if (!mounted) return;
    final uri = Uri(
      path: RoutePath.planner,
      queryParameters: {
        'destination': destination,
        'arrivalTime': arrivalTime,
      },
    );
    context.go(uri.toString(), extra: _addressBloc);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _addressBloc,
      child: Scaffold(
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
            SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                if (_isLogin) {
                  final result = await planUtil.showGoPlanPopup(
                    context: context,
                    addressBloc: _addressBloc,
                  );

                  if (result != null) {
                    final destination = result['destination'] ?? '';
                    final arrivalTime = result['arrivalTime'] ?? '';
                    _goPlannerPage(destination, arrivalTime);
                  }

                } else {
                  final result = await showDialog(context: context, builder: (context) => LoginPopup());
                  if (result == true) {
                    _checkLoginState();
                  }
                }
              },
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
