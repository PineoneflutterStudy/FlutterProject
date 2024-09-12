import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/logger.dart';
import 'screens/planner/init_planner_page.dart';
import '../../../domain/usecase/planner/planner.usecase.dart';
import '../../../service_locator.dart';
import 'bloc/address_bloc/address_bloc.dart';
import 'bloc/planner_bloc/planner_bloc.dart';
import 'screens/planner/planner_loading_widget.dart';
import 'screens/planner/planner_page.dart';
import 'utils/plan_util.dart';

/// ### Plan 메뉴 MainActivity
class PlanPage extends StatefulWidget {
  const PlanPage({super.key});

  @override
  State<PlanPage> createState() => _PlanPageState();
}

class _PlanPageState extends State<PlanPage> with PlanUtil{
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
  void didChangeDependencies() {
    super.didChangeDependencies();
    CustomLogger.logger.i('plan page didChangeDependencies');
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
          BlocProvider.value(value: _addressBloc),
          BlocProvider.value(value: _plannerBloc),
        ],
        child: BlocBuilder<PlannerBloc, PlannerState>(
          bloc: _plannerBloc,
          builder: (_, state) {
            return state.when(
              loading: () => PlannerLoadingWidget(),
              init: (isLogined) => InitPlannerPage(isLogin: isLogined, addressBloc: _addressBloc, plannerBloc: _plannerBloc),
              success: (plannerList, selected, pageIndex) => PlannerPage(plannerBloc: _plannerBloc, addressBloc: _addressBloc),
              error: (error) => Center(child: Text('Error: ${error.message}')),
            );
          },
        ),
    );
  }
}
