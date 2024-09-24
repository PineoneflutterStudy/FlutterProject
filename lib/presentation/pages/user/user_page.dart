import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/constant/Tag.dart';
import '../../../core/utils/logger.dart';
import '../../main/common/component/widget/appbar.dart';
import '../../main/common/component/widget/double_back_to_exit_widget.dart';
import '../login/login_page.dart';
import 'bloc/user_bloc.dart';

/// ## 마이페이지 화면
///
/// author [Eogeum@naver.com]
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.USER;

  late UserBloc _userBloc;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc();
    _userBloc.add(UserEvent.started());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 다른 화면에서 돌아올 때마다 UserEvent.started() 이벤트를 트리거
    _userBloc.add(UserEvent.started());
  }

  @override
  void dispose() {
    _userBloc.close();
    super.dispose();
  }

  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _userBloc,
        child: DoubleBackToExitWidget(
          child: Scaffold(
            appBar: MainAppbar(title: '마이페이지'),
            body: BlocConsumer<UserBloc, UserState>(
              builder: (context, state) => state.map(
                initial: (_) => Center(child: CircularProgressIndicator()),
                loggedIn: (_) => Center(child: logoutBtn()),
                loggedOut: (_) => Center(child: loginBtn()),
                error: (error) => Center(child: Text('Error: ')),
              ),
              listener: (context, state) {
                CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              },
            ),
          ),
        ),
      );

//==============================================================================
//  Layout
//==============================================================================
  /// 로그인 버튼
  GestureDetector loginBtn() => GestureDetector(
      child: Text('로그인', style: TextStyle(fontSize: 30)),
      onTap: () {
        launchLoginPopup();
      });

  /// 로그아웃 버튼
  GestureDetector logoutBtn() => GestureDetector(
      child: Text('로그아웃', style: TextStyle(fontSize: 30)),
      onTap: () {
        _userBloc.add(UserEvent.logoutRequested());
      });

//==============================================================================
//  Methods
//==============================================================================
  /// ## 로그인 화면 실행
  void launchLoginPopup() {
    CustomLogger.logger.i('$_tag launchLoginPopup()');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
        fullscreenDialog: true,
      ),
    );
  }
}
