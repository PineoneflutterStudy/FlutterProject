import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/dialog/common_dialog.dart';
import '../bloc/ctgr_bloc/ctgr_bloc.dart';

import '../../../../core/utils/constant.dart';
import '../../../../domain/usecase/display/display.usecase.dart';
import '../../../../service_locator.dart';
import '../component/global_nav/global_nav_bar.dart';
import '../component/global_nav/global_nav_bar_view.dart';

class RecommendedListPage extends StatelessWidget {
  const RecommendedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CtgrBloc(locator<DisplayUsecase>())
        ..add(CtgrInitialized(MenuType.plan)),
      child: const RecommendedListPageView(),
    );
  }
}

class RecommendedListPageView extends StatelessWidget {
  const RecommendedListPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CtgrBloc, CtgrState>(
      builder: (_, state) {
        switch (state.status) {
          case Status.initial:
            return const Center(child: CircularProgressIndicator());
          case Status.loading:
            return DefaultTabController(
                key: ValueKey<MenuType>(state.menuType),
                length: state.ctgrs.length,
                child: Column(
                  children: [
                    GlobalNavBar(state.ctgrs),
                    GlobalNavBarView(state.menuType, state.ctgrs),
                  ],
                ));
          case Status.success:
            return DefaultTabController(
                key: ValueKey<MenuType>(state.menuType),
                length: state.ctgrs.length,
                child: Column(
                  children: [
                    GlobalNavBar(state.ctgrs),
                    GlobalNavBarView(state.menuType, state.ctgrs),
                  ],
                ));
          case Status.error:
            return Center(child: Text('error'));
        }
      },
      listener: (context, state) async {
        if (state.status == Status.error) {
          final bool result =
              (await CommonDialog.errorDialog(context, state.error) ?? false);
          if (result) {
            // 다시 시도
            context.read<CtgrBloc>().add(CtgrInitialized(MenuType.plan));
          }
        }
      },
      listenWhen: (prev, curr) => prev.status != curr.status,
    );
  }
}
