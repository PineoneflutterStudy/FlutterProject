import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/utils.dart';
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

  const RecommendedListPage({required this.location, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => CtgrBloc(locator<DisplayUsecase>())
              ..add(CtgrInitialized(MenuType.plan)),
          ),
          BlocProvider(
            create: (context) => AddressBloc(locator<PlannerUsecase>())
              ..add(AddressInitialized(location)),
          ),
        ],
        child: RecommendedListPageView(location: location));
  }
}

class RecommendedListPageView extends StatefulWidget {
  final String location;

  const RecommendedListPageView({required this.location, super.key});

  @override
  State<RecommendedListPageView> createState() => _RecommendedListPageViewState();
}

class _RecommendedListPageViewState extends State<RecommendedListPageView> {
  late String _location;
  int radius = 10000;
  String sort = 'distance';

  @override
  void initState() {
    super.initState();
    _location = widget.location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PlaceAppBarView(location: _location,radius: radius,sort: sort, onLocationChanged:_updateAddressInfo, onFilterChanged: _updateFilter),
        body: BlocConsumer<CtgrBloc, CtgrState>(
          builder: (_, ctgrState) {
            switch (ctgrState.status) {
              case Status.initial:
                return Center(child: CircularProgressIndicator());
              case Status.loading:
                return Center(child: CircularProgressIndicator());
              case Status.success:
                CustomLogger.logger.i('카테고리 목록 : ${ctgrState.ctgrs}');
                return Column(
                  children: [
                    CategoryView(ctgrState.ctgrs),
                    Expanded(
                      child: BlocConsumer<AddressBloc, AddressState>(
                        builder: (_, state) {
                          switch (state.status) {
                            case Status.initial:
                              return Center(child: CircularProgressIndicator());
                            case Status.loading:
                              return Center(child: CircularProgressIndicator());
                            case Status.success:
                              CustomLogger.logger.i('현재 중심 위치 : ${state.addressInfo}');
                              return PlaceView(ctgrState.ctgrs, state.addressInfo);
                            case Status.error:
                              return Center(child: Text('${state.error?.message ?? '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.'}',textAlign: TextAlign.center));
                          }
                        },
                        listener: (_, state) async {
                          if (state.status == Status.error) {
                            CustomLogger.logger.e(state.error);
                            Utils.showToastMsg('도착지를 다시 입력해주세요.');
                          }
                        },
                        listenWhen: (prev, curr) => prev.status != curr.status,
                      ),
                    ),
                  ],
                );
              case Status.error:
                return Center(child: Text('목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요.',textAlign: TextAlign.center));
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
        ),
    );
  }

  void _updateAddressInfo(String newLocation) {
    setState(() {
      _location = newLocation;
    });
    context.read<AddressBloc>().add(AddressUpdated(newLocation));
  }

  void _updateFilter(int newRadius, String newSort) {
    print('radius : $newRadius, sort : $newSort');
    setState(() {
      radius = newRadius;
      sort = newSort;
    });
    context.read<AddressBloc>().add(FilterUpdated(newRadius, newSort));
  }

}
