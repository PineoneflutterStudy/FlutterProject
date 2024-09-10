import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/category_bloc.dart';
import 'category_item_widget.dart';


/**
 * 찜목록 상단 카테고리
 */
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key, required this.categorys, required this.selected});
  final Category selected;
  final List<Category> categorys;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SizedBox(
            height: 40.0, // Adjust height as needed
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: widget.categorys.length,
              itemBuilder: (context, index) {
                final isSelected = widget.categorys[index] == widget.selected;
                return CategoryItemWidget(
                  category: widget.categorys[index],
                  isSelected: isSelected,
                  onTap: () {context.read<CategoryBloc>().add(CategoryEvent.setCategorySelected(widget.categorys[index]));},
                );
              },
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 10),
            ),
          ),
        );
      }
    );
  }
}
