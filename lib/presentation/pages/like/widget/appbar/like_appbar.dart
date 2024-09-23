import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../domain/model/display/category/category.model.dart';
import '../../../../main/common/bloc/ctgr_bloc/category_bloc.dart';
import '../../bloc/like_category/like_category_bloc.dart';
import '../../bloc/like_place/like_place_bloc.dart';
import '../../bloc/login/login_check_bloc.dart';
import '../region/region_widget.dart';

/**
 * 찜목록에서 사용하는 버튼도 추가된 AppBar
 * Title만 전달받아 set
 */
class LikeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final BuildContext context;
  final String title;
  final double appbar_height = 70;

  LikeAppbar({
    super.key,
    required this.context,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCheckBloc, LoginCheckState>(
      builder: (context, state) {
        return state.maybeWhen(
          loggedIn: () => initializeAppBar(true),
          loggedOut: () => initializeAppBar(false),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Widget initializeAppBar(bool isLoggedIn) {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState> (
        builder: (context, state) {
          return state.maybeWhen(
            success: (categorys, seleted, regionName) => appBarUI(context, isLoggedIn, categorys, seleted),
            orElse: () => const SizedBox(),
          );
        }
    );
  }

  Widget appBarUI(BuildContext context, bool isLoggedIn, List<Category> categorys, Category selected) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          Visibility(
            visible: isLoggedIn,
            child: IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () async {
                final regionName = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegionWidget(),
                      fullscreenDialog: false
                  ),
                );
                print('regionName -> $regionName');
                context.read<LikeCategoryBloc>()
                    .add(LikeCategoryEvent.setCategorySelected(categorys, selected, regionName));
              },
            ),
          ),
        ],
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Text(title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
        )
      ),
    );
  }


  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
