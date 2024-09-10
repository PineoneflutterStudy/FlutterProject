import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/display/plan/address.model.dart';
import 'place_item_view.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../../domain/usecase/planner/planner.usecase.dart';
import '../../../../../service_locator.dart';
import '../../../../main/common/component/dialog/common_dialog.dart';
import '../../bloc/place_bloc/place_bloc.dart';

class PlaceListView extends StatelessWidget {
  final Category category;
  final String search;
  final Address address;
  final bool isRcmnPage;
  const PlaceListView({required this.category, required this.search, required this.address,required this.isRcmnPage, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final placeBloc = PlaceBloc(locator<PlannerUsecase>());
        if(isRcmnPage){
          placeBloc.add(PlaceEvent.searchXY(address.addressName, category.ctgrId, address, 1));
        }else{
          placeBloc.add(PlaceEvent.search(address.addressName));
        }
        return placeBloc;
      },
      child: PlaceListPageView(category, address, isRcmnPage),
    );
  }
}

class PlaceListPageView extends StatelessWidget {
  final Category category;
  final Address address;
  final bool isRcmnPage;

  const PlaceListPageView(this.category, this.address, this.isRcmnPage, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaceBloc, PlaceState>(builder: (_, state) {
      return state.when(
          loading: () => Center(child: CircularProgressIndicator()),
          empty: () => Container(
                alignment: Alignment.center,
                child: Text('반경 ${(address.radius ?? 10000) ~/ 1000}km 등록된 ${category.ctgrName}이 없습니다.', style: TextStyle(fontSize: 23)),
          ),
          success: (places) => ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: places.length,
                itemBuilder: (context, index) {
                  return PlaceItemView(place: places[index], isRcmnPage: isRcmnPage);
                  },
          ),
          error: (error) => Center(child: Text('${error.message}')));
    });
  }
}
