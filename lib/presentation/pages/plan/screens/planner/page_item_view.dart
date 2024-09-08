import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import '../../bloc/address_bloc/address_bloc.dart';
import '../../bloc/planner_bloc/planner_bloc.dart';
import 'planner_item_view.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';

/// 여행계획 Item View
class PageItemView extends StatefulWidget {
  final int plannerIndex;
  final PlannerPage planner;
  final int pageIndex;
  final AddressBloc addressBloc;
  final PlannerBloc plannerBloc;

  const PageItemView({required this.plannerIndex, required this.planner,required this.pageIndex,required this.addressBloc,required this.plannerBloc, super.key});

  @override
  State<PageItemView> createState() => _PageItemViewState();
}

class _PageItemViewState extends State<PageItemView> {
  late final ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 5),
      color: AppColors.secondary,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Day ${widget.pageIndex + 1}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 16), // Text와 ListView 사이의 간격
              Expanded(
                child: FadingEdgeScrollView.fromScrollView(
                  gradientFractionOnEnd: 0.2,
                  gradientFractionOnStart: 0.2,
                  child: ListView.builder(
                    controller: _controller,
                    scrollDirection: Axis.vertical,
                    itemCount: widget.planner.page_item_list.length,
                    itemBuilder: (context, index) {
                      return PlannerItemView(
                          plannerIndex: widget.plannerIndex,
                          pageIndex: widget.pageIndex,
                          plan: widget.planner.page_item_list[index],
                          curItemindex: index,
                          lastIndex: widget.planner.page_item_list.length - 1,
                          addressBloc: widget.addressBloc,
                          plannerBloc: widget.plannerBloc);
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}