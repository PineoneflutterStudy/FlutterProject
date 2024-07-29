import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import 'place_app_bar_view.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import 'category_view.dart';
import 'place_view.dart';

class RecommendedListPage extends StatelessWidget {
  final String location;

  RecommendedListPage(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) => CtgrBloc(locator<DisplayUsecase>())
          ..add(CtgrInitialized(MenuType.plan)),
      ),
      BlocProvider(
        create: (context) => AddressBloc(locator<PlannerUsecase>())
          ..add(AddressInitialized(location)),
      ),
    ], child: RecommendedListPageView(location));
  }
}

class RecommendedListPageView extends StatelessWidget {
  final String location;

  const RecommendedListPageView(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CtgrBloc, CtgrState>(
      builder: (_, ctgrState) {
        switch (ctgrState.status) {
          case Status.initial:
            return Scaffold(
                appBar: PlaceAppBarView(location: ''),
                body: Center(child: CircularProgressIndicator())
            );
          case Status.loading:
            return Scaffold(
              appBar: PlaceAppBarView(location: ''),
              body: Center(child: CircularProgressIndicator())
            );
          case Status.success:
            CustomLogger.logger.i('카테고리 목록 : ${ctgrState.ctgrs}');
            return BlocConsumer<AddressBloc, AddressState>(
              builder: (_, state) {
                switch (state.status) {
                  case Status.initial:
                    return const Center(child: CircularProgressIndicator());
                  case Status.loading:
                    return const Center(child: CircularProgressIndicator());
                  case Status.success:
                    CustomLogger.logger.i('현재 중심 위치 : ${state.addressInfo}');
                    return Scaffold(
                      appBar: PlaceAppBarView(location: state.addressInfo?.addressName ?? ''),
                      body: Column(
                        children: [
                          CategoryView(ctgrState.ctgrs),
                          Expanded(
                            child: PlaceView(ctgrState.ctgrs, state.addressInfo),),
                        ],
                      ),
                    );
                  case Status.error:
                    return Center(child: Text('error'));
                }
              },
              listener: (_, state) async {
                if (state.status == Status.error) {
                  CustomLogger.logger.e(state.error);
                  final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
                  if (result) {
                    context.read<AddressBloc>().add(AddressInitialized(location));
                  }
                }
              },
              listenWhen: (prev, curr) => prev.status != curr.status,
            );
          case Status.error:
            return Center(child: Text('error'));
        }
      },
      listener: (context, state) async {
        if (state.status == Status.error) {
          CustomLogger.logger.e(state.error);
          final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
          if (result) {
            context.read<CtgrBloc>().add(CtgrInitialized(MenuType.plan));
          }
        }
      },
      listenWhen: (prev, curr) => prev.status != curr.status,
    );
  }
}
