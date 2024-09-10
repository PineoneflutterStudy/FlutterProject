import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  final ValueChanged<String?> onResult;

  LikeAppbar({
    super.key,
    required this.context,
    required this.title,
    required this.onResult,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCheckBloc, LoginCheckState>(
      builder: (context, state) {
        return state.maybeWhen(
          loggedIn: () => initializeAppBar(context, true, onResult),
          loggedOut: () => initializeAppBar(context, false, onResult),
          orElse: () => const SizedBox(),
        );
      },
    );
  }

  Scaffold initializeAppBar(BuildContext context, bool isLoggedIn, ValueChanged<String?> onResult) {
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
                    onResult(result);
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
