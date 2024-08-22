import 'package:flutter/material.dart';
import 'planner_item_view.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';

/// 여행계획 Item View
class PageItemView extends StatefulWidget {
  final PlannerPage planner;
  final int index;

  const PageItemView(this.planner, this.index, {super.key});

  @override
  State<PageItemView> createState() => _PageItemViewState();
}

class _PageItemViewState extends State<PageItemView> {
  @override
  void initState() {
    super.initState();
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
                "${widget.planner.planner_title ?? ''} ${widget.index}일차 🚘",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 16), // Text와 ListView 사이의 간격
              Expanded(
                child: ListView.builder(
                  itemCount: widget.planner.page_item_list.length,
                  itemBuilder: (context, index) {
                    return PlannerItemView(widget.planner.page_item_list[index]);
                  },
                ),
              ),
            ],
          )),
    );
  }
}