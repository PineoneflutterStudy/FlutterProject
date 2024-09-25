import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../domain/model/display/common/category.model.dart';
import '../../bloc/like_category/like_category_bloc.dart';
import '../../bloc/login/login_check_bloc.dart';
import '../region/region_widget.dart';

/**
 * 찜목록에서 사용하는 버튼도 추가된 AppBar
 * Title만 전달받아 set
 */
class LikeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final LoginCheckBloc loginBloc;
  final LoginCheckState loginState;
  final double appbar_height = 70;

  LikeAppbar({
    super.key,
    required this.title,
    required this.loginBloc,
    required this.loginState,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          actions: [
            setFilterButton(),
          ],
          title: Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Text(title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
          )
      ),
    );
  }

  Widget setFilterButton() {
    return BlocBuilder<LikeCategoryBloc, LikeCategoryState>(
      builder: (BuildContext context, LikeCategoryState state) {
        return state.maybeWhen(
          success: (categorys, selected, regionName) {
            return Visibility(
              visible: loginState.maybeWhen(
                loggedIn: () => true,
                orElse: () => false,
              ),
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

                  context.read<LikeCategoryBloc>()
                      .add(LikeCategoryEvent.setCategorySelected(categorys, selected, regionName));
                },
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
