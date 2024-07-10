import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../domain/model/display/category/category.model.dart';

class PlannerNavBarView extends StatelessWidget {
  const PlannerNavBarView(this.menuType, this.categoryList, {super.key});

  final MenuType menuType;
  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: List.generate(
          categoryList.length,
          (index) => Column(
            children: [
              Text('menuType : ${menuType}'),
              Text('menuType : ${categoryList[index].ctgrName}'),
            ],
          ),
        ),
      ),
    );
  }
}
