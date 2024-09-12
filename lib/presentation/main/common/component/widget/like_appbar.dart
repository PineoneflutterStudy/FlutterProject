import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../pages/like/bloc/like_place/like_place_bloc.dart';
import '../../../../pages/like/bloc/login/login_check_bloc.dart';
import '../../../../pages/like/widget/region/region_widget.dart';

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
          loggedIn: () => initializeAppBar(context, true),
          loggedOut: () => initializeAppBar(context, false),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Scaffold initializeAppBar(BuildContext context, bool isLoggedIn) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            actions: [
              Visibility(
                visible: isLoggedIn,
                child: IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () async {
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegionWidget(),
                          fullscreenDialog: false
                      ),
                    );
                    context.read<LikePlaceBloc>()
                        .add(LikePlaceEvent.region(result));
                  },
                ),
              ),
            ],
            title: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Text(title,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            )),
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
