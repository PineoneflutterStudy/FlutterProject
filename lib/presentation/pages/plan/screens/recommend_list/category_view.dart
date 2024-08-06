import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import 'category_item_view.dart';

/// 상단 카테고리 형 NavBar
class CategoryView extends StatefulWidget {
  const CategoryView(this.categorys, {super.key});
  final List<Category> categorys;
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CtgrBloc, CtgrState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: 40.0, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.categorys.length,
              itemBuilder: (context, index) {
                final isSelected = widget.categorys[index] == state.selectedCategory;
                return CategoryItemView(
                  category: widget.categorys[index],
                  isSelected: isSelected,
                  onTap: () {context.read<CtgrBloc>().add(CtgrCategorySelected(widget.categorys[index]));},
                );
              },
            ),
          ),
        );
      },
    );
  }
}
