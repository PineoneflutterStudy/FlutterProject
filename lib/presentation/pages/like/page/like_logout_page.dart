import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../login/login_page.dart';
import '../bloc/login/login_check_bloc.dart';

class LikeLogoutPage extends StatelessWidget {

  final BuildContext context;
  LikeLogoutPage({
    Key? key,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('로그인이 필요한 페이지 입니다.',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          IconButton(
            icon: Icon(Icons.login_rounded,
              size: 32,
            ),
            onPressed: () async {
              final result = await Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                  fullscreenDialog: true,
                ),
              );

              if (result != null && result) {
                context.read<LoginCheckBloc>().add(LoginCheckEvent.checkLogin());
              }
            },
          ),
        ],
      ),
    );
  }
}
