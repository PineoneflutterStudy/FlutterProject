import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'recommended_list_page.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import '../../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../plan_error_page.dart';
import 'place_item_view.dart';

import '../../../../../domain/model/display/common/category.model.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';
import '../../../../../service_locator.dart';
import '../../bloc/place_bloc/place_bloc.dart';

class PlaceListView extends StatelessWidget {
  final Category category;
  final String search;
  final Address address;
  final String prevPlaceId;
  final String root;
  const PlaceListView({required this.category, required this.search, required this.address, required this.prevPlaceId, required this.root, super.key});

  @override
  Widget build(BuildContext context) {
    final placeBloc = PlaceBloc(locator<PlannerUsecase>());
    return BlocProvider(
      create: (_) {
        if(root == 'nextPage'){
          placeBloc.add(PlaceEvent.search(search, category.ctgrId));
        }else{
          placeBloc.add(PlaceEvent.searchXY(search, category.ctgrId, address, prevPlaceId: prevPlaceId));
        }
        return placeBloc;
      },
      child: PlaceListPageView(placeBloc, category, address, root, search),
    );
  }
}

class PlaceListPageView extends StatefulWidget {
  final PlaceBloc placeBloc;
  final Category category;
  final Address address;
  final String root;
  final String search;

  const PlaceListPageView(this.placeBloc, this.category, this.address, this.root, this.search, {Key? key}) : super(key: key);

  @override
  _PlaceListPageViewState createState() => _PlaceListPageViewState();
}

class _PlaceListPageViewState extends State<PlaceListPageView> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _loadMoreData();
    }
  }

  void _loadMoreData() {
    _currentPage++;
    _addPlaceEvent(page: _currentPage);
  }

  void _addPlaceEvent({int page = 1}) {
    if (widget.root == 'nextPage') {
      widget.placeBloc.add(PlaceEvent.search(widget.search, widget.category.ctgrId, page: page));
    } else {
      widget.placeBloc.add(PlaceEvent.searchXY(widget.search, widget.category.ctgrId, widget.address, page: page));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceBloc, PlaceState>(
      builder: (context, state) {
        return state.when(
          loading: () => MangmungLoadingIndicator(),
          empty: () => PlanErrorPage(title: '반경 ${(widget.address.radius ?? defaultRadius) ~/ 1000}km 등록된 ${widget.category.ctgrName}이 없습니다.'),
          success: (places) => FadingEdgeScrollView.fromScrollView(
            gradientFractionOnEnd: 0.2,
            gradientFractionOnStart: 0.2,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              itemCount: places.length + 1,
              itemBuilder: (context, index) {
                if (index < places.length) {
                  return PlaceItemView(
                    place: places[index],
                    root: widget.root,
                    radius: widget.address.radius ?? defaultRadius,
                    sort: widget.address.sort ?? defaultSortOrder,
                  );
                } else {
                  return const MangmungLoadingIndicator(size: 80);
                }
              },
            ),
          ),
          error: (error) => PlanErrorPage(title: "목록을 불러오는 데 실패하였습니다.\n다시 시도해주세요."),
        );
      },
    );
  }
}