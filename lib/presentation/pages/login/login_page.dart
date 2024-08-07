import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  orElse: () => null),
            )),
      );

//==============================================================================
//  Methods
//==============================================================================
  void _onAlreadyLoggedIn() {
    //eff 토스트 띄우고 이전 화면으로
  }

  void _onRequireMoreUserInfo() {
    //eff 이메일 정보 추가로 받던 이메일 로그인으로 전환하던 해야함
  }

  void _onLoggedIn() {
    //eff 토스트 띄우고 이전 화면으로
  }
}
