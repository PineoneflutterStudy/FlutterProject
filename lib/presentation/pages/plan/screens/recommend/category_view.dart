import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/category_bloc.dart';
import 'category_item_view.dart';

/// 상단 카테고리 형 NavBar
class CategoryView extends StatefulWidget {
  final List<Category> categorys;
  final CategoryBloc categoryBloc;
  final int selectedIndex;

  const CategoryView({required this.categorys, required this.categoryBloc, required this.selectedIndex, super.key});
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToIndex(int index) {
    final itemWidth = 60.0; // 각 항목의 너비
    final viewportWidth = _scrollController.position.viewportDimension;
    final itemStartOffset = index * itemWidth;
    final itemEndOffset = itemStartOffset + itemWidth;

    final viewportStartOffset = _scrollController.offset;
    final viewportEndOffset = viewportStartOffset + viewportWidth;

    if (itemEndOffset > viewportEndOffset || itemStartOffset < viewportStartOffset) {
      _scrollController.animateTo(
        itemStartOffset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.selectedIndex != -1) {
        scrollToIndex(widget.selectedIndex);
      }
    });

    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: FadingEdgeScrollView.fromScrollView(
          gradientFractionOnEnd: 0.2,
          gradientFractionOnStart: 0.2,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              itemCount: widget.categorys.length,
              itemBuilder: (context, index) {
                return CategoryItemView(
                  category: widget.categorys[index],
                  isSelected: index == widget.selectedIndex,
                  onTap: () {
                    widget.categoryBloc.add(CategoryEvent.setCategorySelected(widget.categorys[index]));
                  },
                );
              },
              separatorBuilder: (context, index){
                return SizedBox(width: 5);
              }
          ),
        ),
      ),
    );
  }
}
