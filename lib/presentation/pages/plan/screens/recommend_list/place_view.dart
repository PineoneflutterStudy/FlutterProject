import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'place_list_view.dart';

import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';

class PlaceView extends StatelessWidget {
  const PlaceView(this.categoryList, {super.key});
  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CtgrBloc, CtgrState>(
      builder: (context, state) {
        final selectedIndex = state.selectedCategory != null ? categoryList.indexOf(state.selectedCategory!) : 0;

        return IndexedStack(
          index: selectedIndex,
          children: List.generate(categoryList.length, (index)
          {
              return PlaceListView(categoryList[index]);
          }),
          );
      },
    );
  }
}
