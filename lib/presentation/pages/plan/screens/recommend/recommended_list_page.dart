import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import '../../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../plan_error_page.dart';
import 'place_list_view.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import 'place_app_bar_view.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../domain/usecase/display/display.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/bloc/ctgr_bloc/category_bloc.dart';
import 'category_view.dart';

/// ### Plan 메뉴 > 추천 장소 목록 화면
class RecommendedListPage extends StatelessWidget {
  final String location;
  final String prevPlaceId;
  final AddressBloc addressBloc;
  final String categoryId;
  final String root;

  const RecommendedListPage({required this.location, required this.prevPlaceId, required this.addressBloc, required this.categoryId, required this.root, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryBloc(locator<DisplayUsecase>())
        ..add(CategoryEvent.getCategoryList(MenuType.plan, selectedCg: categoryId)),
      child: RecommendedListPageView(location: location, prevPlaceId: prevPlaceId, addressBloc: addressBloc, root: root),
    );
  }
}

class RecommendedListPageView extends StatefulWidget {
  final String location;
  final String prevPlaceId;
  final AddressBloc addressBloc;

  final String root ;

  const RecommendedListPageView({required this.location, required this.prevPlaceId, required this.addressBloc, required this.root, super.key});
  @override
  State<RecommendedListPageView> createState() => _RecommendedListPageViewState();
}

class _RecommendedListPageViewState extends State<RecommendedListPageView> {
  late String _location;
  int radius = defaultRadius;
  String sort = defaultSortOrder;
  ValueNotifier<Address?> addressNotifier = ValueNotifier<Address?>(null);

  @override
  void initState() {
    super.initState();
    _location = widget.location;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PlaceAppBarView(location: _location,radius: radius,sort: sort, isFilterVisible: (widget.root != 'nextPage'), onLocationChanged:_updateAddressInfo, onFilterChanged: _updateFilter),
        body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (_, ctgrState) {
            return ctgrState.when(
                loading: () => Container(),
                success: (categorys, selected){
                  var selectedIndex = categorys.indexOf(selected);
                  return Column(
                    children: [
                      CategoryView(categorys: categorys, categoryBloc: BlocProvider.of<CategoryBloc>(context), selectedIndex : selectedIndex),
                      Expanded(
                        child: BlocBuilder<AddressBloc, AddressState>(
                          bloc: widget.addressBloc,
                          builder: (_, state) {
                            return state.when(
                              loading: () => MangmungLoadingIndicator(),
                              success: (addressInfo) {
                                addressNotifier.value = addressInfo;
                                return IndexedStack(
                                  index: selectedIndex,
                                  children: List.generate(
                                    categorys.length,
                                    (index) {
                                      return PlaceListView(
                                          key: ValueKey('${categorys[index].ctgrId} + $addressInfo'),
                                          category: categorys[index],
                                          search: _location,
                                          address: addressInfo,
                                          prevPlaceId: widget.prevPlaceId,
                                          root: widget.root);
                                    },
                                  ),
                                );
                              },
                              error: (error) => PlanErrorPage(title: error.message ?? '검색한 장소에 대한 정보가 없습니다.\n다시 검색해주세요.')
                            );
                          }
                        ),
                      ),
                    ],
                  );
                },
                error: (error) => PlanErrorPage(title: "목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요."),
            );
          },
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

const int defaultRadius = 10000;
const String defaultSortOrder = 'distance';