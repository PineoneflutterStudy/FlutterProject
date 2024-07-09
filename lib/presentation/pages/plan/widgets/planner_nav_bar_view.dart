import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../domain/model/display/category/category.model.dart';

class PlannerNavBarView extends StatelessWidget {
  const PlannerNavBarView(this.menuType, this.categorys, {super.key});

  final MenuType menuType;
  final List<Category> categorys;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: List.generate(
          categorys.length,
          (index) => Column(
            children: [
              Text('menuType : ${menuType}'),
              Text('menuType : ${menuType.name}'),
            ],
          ),
        ),
      ),
    );
  }
}
