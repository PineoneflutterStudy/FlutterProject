import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'place_list_view.dart';
import '../../../../../core/utils/common_utils.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../planner/planner_loading_widget.dart';
import 'place_app_bar_view.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/bloc/ctgr_bloc/category_bloc.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import 'category_view.dart';

/// ### Plan 메뉴 > 추천 장소 목록 화면
class RecommendedListPage extends StatelessWidget {
  final String location;
  final AddressBloc addressBloc;
  final String categoryId;

  const RecommendedListPage({required this.location, required this.addressBloc, required this.categoryId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryBloc(locator<DisplayUsecase>())
        ..add(CategoryEvent.getCategoryList(MenuType.plan, selectedCg: categoryId)),
      child: RecommendedListPageView(location: location, addressBloc: addressBloc, isRcmnPage: (categoryId == 'FD6')),
    );
  }
}

class RecommendedListPageView extends StatefulWidget {
  final String location;
  final AddressBloc addressBloc;

  final bool isRcmnPage ;

  const RecommendedListPageView({required this.location, required this.addressBloc, required this.isRcmnPage, super.key});
  @override
  State<RecommendedListPageView> createState() => _RecommendedListPageViewState();
}

class _RecommendedListPageViewState extends State<RecommendedListPageView> {
  late String _location;
  int radius = 10000;
  String sort = "distance";

  @override
  void initState() {
    super.initState();
    _location = widget.location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PlaceAppBarView(location: _location,radius: radius,sort: sort, onLocationChanged:_updateAddressInfo, onFilterChanged: _updateFilter),
        body: BlocConsumer<CategoryBloc, CategoryState>(
          builder: (_, ctgrState) {
            return ctgrState.when(
                loading: () => PlannerLoadingWidget(),
                success: (categorys, selected){
                  var selectedIndex = categorys.indexOf(selected);
                  return Column(
                    children: [
                      CategoryView(categorys: categorys, categoryBloc: BlocProvider.of<CategoryBloc>(context), selectedIndex : selectedIndex),
                      Expanded(
                        child: BlocConsumer<AddressBloc, AddressState>(
                          bloc: widget.addressBloc,
                          builder: (_, state) {
                            return state.when(
                              loading: () => CircularProgressIndicator(),
                              success: (addressInfo) {
                                return IndexedStack(
                                  index: selectedIndex,
                                  children: List.generate(categorys.length, (index) => PlaceListView(category: categorys[index], search: widget.location, address: addressInfo, isRcmnPage: widget.isRcmnPage)),
                                );
                              },
                              error: (error) {
                                return Center(
                                  child: Text(error.message ?? '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.', textAlign: TextAlign.center),
                                );
                              },
                            );
                          },
                          listener: (_, state) async {
                            state.maybeWhen(
                              error: (error) {
                                CustomLogger.logger.e(error);
                                CommonUtils.showToastMsg("도착지를 다시 입력해주세요.");
                              },
                              orElse: () {},
                            );
                          },
                          listenWhen: (prev, curr) => prev.runtimeType != curr.runtimeType,
                        ),
                      ),
                    ],
                  );
                },
                error: (error) => Center(child: Text("목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요.",textAlign: TextAlign.center)),
            );
          },
          listener: (context, state) async {
            if (state is CategoryError) { // category bloc error
              CustomLogger.logger.e(state.error);
              final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
              if (result) {
                context.read<CategoryBloc>().add(CategoryEvent.getCategoryList(MenuType.plan));
              }
            }
          },
          listenWhen: (prev, curr) => prev.runtimeType != curr.runtimeType,
        ),
    );
  }

  /// 주소 정보 업데이트
  /// 검색 창에서 주소 변경한 경우 사용된다.
  void _updateAddressInfo(String newLocation) {
    setState(() => _location = newLocation);
    widget.addressBloc.add(AddressUpdated(newLocation));

  }

  /// 필터조건 update
  void _updateFilter(int newRadius, String newSort) {
    setState(() {
      radius = newRadius;
      sort = newSort;
    });
    widget.addressBloc.add(FilterUpdated(newRadius, newSort));
  }

}
