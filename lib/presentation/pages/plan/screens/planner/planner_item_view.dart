import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../domain/model/display/place/planner.model.dart';

/// 여행계획 Item View
class PlannerItemView extends StatefulWidget {
  final Planner planner;
  final int index;

  const PlannerItemView(this.planner, this.index, {super.key});

  @override
  State<PlannerItemView> createState() => _PlannerItemViewState();
}

class _PlannerItemViewState extends State<PlannerItemView> {
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
              // Additional content if needed
            ],
          )),
    );
  }
}