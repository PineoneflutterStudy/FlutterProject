import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import 'category_view.dart';
import 'place_view.dart';

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
            return const Center(child: CircularProgressIndicator());
          case Status.success:
            return Column(
              children: [
                CategoryView(state.ctgrs),
                Expanded(
                  child: PlaceView(state.ctgrs),
                ),
              ],
            );
          case Status.error:
            return Center(child: Text('error'));
        }
      },
      listener: (context, state) async {
        if (state.status == Status.error) {
          CustomLogger.logger.e(state.error);
          final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
          if (result) { // [다시 시도] 버튼 클릭 - 서버 재호출
            context.read<CtgrBloc>().add(CtgrInitialized(MenuType.plan));
          }
        }
      },
      listenWhen: (prev, curr) => prev.status != curr.status,
    );
  }
}
