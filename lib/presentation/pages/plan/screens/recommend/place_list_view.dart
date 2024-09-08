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
  final Address address;
  const PlaceListView({required this.category,required this.address, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlaceBloc(locator<PlannerUsecase>())
        ..add(PlaceInitialized(address.addressName, category.ctgrId, address.x,
            address.y, address.radius, 1, address.sort)),
      child: PlaceListPageView(category, address),
    );
  }
}

class PlaceListPageView extends StatelessWidget {
  final Category category;
  final Address address;

  const PlaceListPageView(this.category, this.address, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlaceBloc, PlaceState>(
      builder: (_, state) {
        switch (state.status) {
          case Status.initial:
            return const Center(child: CircularProgressIndicator());
          case Status.loading:
            return const Center(child: CircularProgressIndicator());
          case Status.success:
            if (state.places.isEmpty) {
              return Container(
                alignment: Alignment.center,
                child: Text('반경 ${(address.radius ?? 10000)~/1000}km 등록된 ${category.ctgrName}이 없습니다.', style: TextStyle(fontSize: 20)),
              );
            } else {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: state.places.length,
                itemBuilder: (context, index) {
                  return PlaceItemView(place : state.places[index]);
                },
              );
            }
          case Status.error:
            return Center(child: Text('error'));
        }
      },
      listener: (context, state) async {
        if (state.status == Status.error) {
          CustomLogger.logger.e(state.error);
          final bool result = (await CommonDialog.errorDialog(context, state.error) ?? false);
          if (result) {
            context.read<PlaceBloc>().add(PlaceInitialized(address.addressName,
                category.ctgrId, address.x, address.y, address.radius, 1, address.sort));
          }
        }
      },
      listenWhen: (prev, curr) => prev.status != curr.status,
    );
  }
}
