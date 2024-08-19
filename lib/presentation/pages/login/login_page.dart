import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/common_utils.dart';
import '../../../core/utils/logger.dart';
import 'bloc/login_bloc.dart';
import 'widgets/login_option_list.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

/// ## 로그인 화면
///
/// author [Eogeum@naver.com]
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
    _loginBloc.add(LoginEvent.started());
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _loginBloc,
        child: Scaffold(
            appBar: AppBar(),
            body: BlocConsumer<LoginBloc, LoginState>(
              builder: (context, state) => const LoginOptionList(),
              listener: (context, state) => state.maybeWhen(
                  alreadyLoggedIn: () => _onAlreadyLoggedIn(),
                  requireMoreUserInfo: () => _onRequireMoreUserInfo(),
                  loggedIn: () => _onLoggedIn(),
                  loggedOut: () => _onLoggedOut(),
                  orElse: () => null),
            )),
      );

//==============================================================================
//  Methods
//==============================================================================
  void _onAlreadyLoggedIn() {
    //ett 로그아웃하고 다른 계정으로 로그인할 건지 팝업을 띄울수도?
    // 이미 로그인 된 경우 토스트 노출 후 이전 화면으로 복귀
    CommonUtils.showToastMsg('이미 로그인되어 있습니다.');
    Navigator.pop(context,true);
  }

  void _onRequireMoreUserInfo() {
    //eff 이메일 정보 추가로 받던 이메일 로그인으로 전환하던 해야함
  }

  void _onLoggedIn() {
    // 로그인 성공한 경우 이전 화면으로 복귀
    Navigator.pop(context,true);
  }

  void _onLoggedOut() {
    // 오류 토스트 노출
    CommonUtils.showToastMsg('알 수 없는 오류로 로그아웃되었습니다.\n다시 로그인해 주세요.');
  }

  void _launchEmailSignInPage() {
    CustomLogger.logger.i('$_tag launchSignInPage()');
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => SignInPage(),
    //     fullscreenDialog: true,
    //   ),
    // );
  }
}
