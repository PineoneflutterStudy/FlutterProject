import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/planner/init_planner_page.dart';
import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../domain/usecase/planner/planner.usecase.dart';
import '../../../service_locator.dart';
import 'bloc/address_bloc/address_bloc.dart';
import 'bloc/planner_bloc/planner_bloc.dart';
import 'screens/planner/planner_page.dart';
import 'utils/plan_util.dart';

/// ### Plan 메뉴 MainActivity
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> {
  final auth = FirebaseAuthUtil();
  final planUtil = PlanUtil();
  bool _isLogin = false;
  late AddressBloc _addressBloc;
  late PlannerBloc _plannerBloc;

  @override
  void initState() {
    super.initState();
    _addressBloc = AddressBloc(locator<PlannerUsecase>());
    _plannerBloc = PlannerBloc();
    _checkLoginState();
  }

  @override
  void dispose() {
    _addressBloc.close();
    _plannerBloc.close();
    super.dispose();
  }

  /// 로그인 상태 체크
  /// todo init bloc 로 수정하기
  Future<void> _checkLoginState() async {
    bool isLoggedIn = await auth.isLoggedIn();

    setState(() {
      _isLogin = isLoggedIn;
    });

    if (isLoggedIn) {
      _plannerBloc.add(const PlannerEvent.getPlannerList());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => _addressBloc),
          BlocProvider(create: (_) => _plannerBloc),
        ],
        child: BlocBuilder<PlannerBloc, PlannerState>(
          bloc: _plannerBloc,
          builder: (_, state) {
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              success: (plannerList, selected) {
                return PlannerPage(plannerBloc: _plannerBloc, addressBloc: _addressBloc);
              },
              error: (error) {
                return InitPlannerPage(isLogin: _isLogin, addressBloc: _addressBloc, plannerBloc: _plannerBloc, checkLoginState: _checkLoginState);
              },
            );
          },
        )
    );
  }
}