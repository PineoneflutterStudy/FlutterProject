import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../bloc/ctgr_bloc/ctgr_bloc.dart';

/**
 * 상단 카테고리 형 NavBar
 */
class CategoryNavBar extends StatelessWidget {
  const CategoryNavBar(this.categorys, {super.key});

  final List<Category> categorys;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textScheme = Theme.of(context).textTheme;

    return BlocBuilder<CtgrBloc, CtgrState>(
      builder: (context, state) {
        return Stack(
          children: [
            TabBar(
              tabs: List.generate(
                categorys.length,
                (index) => Tab(text: categorys[index].ctgrName,
                ),
              ),
              indicator: UnderlineTabIndicator(borderSide: BorderSide(color: colorScheme.primary, width: 2)),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.symmetric(horizontal: 8),
              labelStyle: textScheme.titleLarge.semiBold,
              unselectedLabelStyle: textScheme.titleLarge,
              unselectedLabelColor: colorScheme.contentSecondary,
            ),
            if (state.status == Status.loading)
              Positioned.fill(
                child: ColoredBox(
                  color: Colors.black.withOpacity(0.2),
                  child: Center(child: Transform.scale(scale: 0.5, child: CircularProgressIndicator())),
                ),
              )
          ],
        );
      },
    );
  }
}
