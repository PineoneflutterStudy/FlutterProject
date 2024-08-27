import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/logger.dart';
import '../../main/common/component/dialog/common_dialog.dart';
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
  late AddressBloc _addressBloc;
  late PlannerBloc _plannerBloc;

  @override
  void initState() {
    super.initState();
    _addressBloc = AddressBloc(locator<PlannerUsecase>());
    _plannerBloc = PlannerBloc();
    _plannerBloc.add(PlannerEvent.checkLoginState());
  }

  @override
  void dispose() {
    _addressBloc.close();
    _plannerBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => _addressBloc),
          BlocProvider(create: (_) => _plannerBloc),
        ],
        child: BlocConsumer<PlannerBloc, PlannerState>(
          bloc: _plannerBloc,
          builder: (_, state) {
            print('cur state : $state');
            return state.when(
              loading: () => Center(child: CircularProgressIndicator()),
              init: (isLogined) => InitPlannerPage(isLogin: isLogined, addressBloc: _addressBloc, plannerBloc: _plannerBloc),
              success: (plannerList, selected) => PlannerPage(plannerBloc: _plannerBloc, addressBloc: _addressBloc),
              error: (error) => Container(),
            );
          },
          listener: (context, state) async {
            if (state is Error) {
              CustomLogger.logger.e(state.error);
              final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
              if (result) {
                _plannerBloc..add(PlannerEvent.checkLoginState());
              }
            }
          },
          listenWhen: (prev, curr) => prev.runtimeType != curr.runtimeType,
        ),
    );
  }
}
