import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/ctgr_bloc.dart';
import 'category_item_widget.dart';


/**
 * 찜목록 상단 카테고리
 */
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key, required this.categorys});
  final List<Category> categorys;

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CtgrBloc, CtgrState>(
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
                final isSelected = widget.categorys[index] == state.selectedCategory;
                return CategoryItemWidget(
                  category: widget.categorys[index],
                  isSelected: isSelected,
                  onTap: () {context.read<CtgrBloc>().add(CtgrCategorySelected(widget.categorys[index]));},
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
