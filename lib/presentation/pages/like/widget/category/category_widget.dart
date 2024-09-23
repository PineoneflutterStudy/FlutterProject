import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/model/display/category/category.model.dart';
import '../../bloc/like_category/like_category_bloc.dart';
import 'category_item_widget.dart';


/**
 * 찜목록 상단 카테고리
 */
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key, required this.categorys, required this.selected, required this.regionName});
  final Category selected;
  final List<Category> categorys;
  final String regionName;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState>(
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
                  onTap: () {context.read<LikeCategoryBloc>().add(LikeCategoryEvent.setCategorySelected(widget.categorys, widget.categorys[index], widget.regionName));},
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
