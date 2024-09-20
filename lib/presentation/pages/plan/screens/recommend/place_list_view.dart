import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import '../../../../main/common/component/widget/honey_progress_indicator.dart';
import 'place_item_view.dart';

import '../../../../../domain/model/display/category/category.model.dart';
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
    return BlocProvider(
      create: (_) {
        final placeBloc = PlaceBloc(locator<PlannerUsecase>());
        if(root == 'nextPage'){
          placeBloc.add(PlaceEvent.search(search, category.ctgrId));
        }else{
          placeBloc.add(PlaceEvent.searchXY(search, category.ctgrId, address, prevPlaceId));
        }
        return placeBloc;
      },
      child: PlaceListPageView(category, address, root, search),
    );
  }
}

class PlaceListPageView extends StatefulWidget {
  final Category category;
  final Address address;
  final String root;
  final String search;

  const PlaceListPageView(this.category, this.address, this.root, this.search, {Key? key}) : super(key: key);

  @override
  _PlaceListPageViewState createState() => _PlaceListPageViewState();
}

class _PlaceListPageViewState extends State<PlaceListPageView> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  bool _isLoading = false;

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
    if (!_isLoading) {
      setState(() => _isLoading = true);
      _currentPage++;
      if (widget.root == 'nextPage') {
        context.read<PlaceBloc>().add(PlaceEvent.search(widget.search, widget.category.ctgrId, page: _currentPage));
      } else {
        context.read<PlaceBloc>().add(PlaceEvent.searchXY(widget.search, widget.category.ctgrId, widget.address, '', page : _currentPage));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlaceBloc, PlaceState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (_) => _isLoading = false,
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          loading: () => Center(child: HoneyProgressIndicator()),
          empty: () => Container(
            alignment: Alignment.center,
            child: Text('반경 ${(widget.address.radius ?? 10000) ~/ 1000}km 등록된 ${widget.category.ctgrName}이 없습니다.', style: TextStyle(fontSize: 23)),
          ),
          success: (places) => ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            itemCount: places.length + 1,
            itemBuilder: (context, index) {
              if (index < places.length) {
                return PlaceItemView(
                  place: places[index],
                  root: widget.root,
                  radius: widget.address.radius ?? 10000,
                  sort: widget.address.sort ?? 'distance',
                );
              } else {
                return _isLoading
                    ? Center(child: HoneyProgressIndicator())
                    : SizedBox.shrink();
              }
            },
          ),
          error: (error) => Center(child: Text('${error.message}')),
        );
      },
    );
  }
}