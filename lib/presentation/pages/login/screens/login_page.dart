import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/constant/tag.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';
import '../bloc/login_bloc.dart';
import '../dialogs/login_dialog.dart';
import '../widgets/login_option_item.dart';
import 'email_login_page.dart';

/// ## 로그인 화면
///
/// author [Eogeum@naver.com]
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.LOGIN;

  late LoginBloc _loginBloc;
  final _authTypeList = AuthType.values;

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
          appBar: AppBar(backgroundColor: AppColors.secondary),
          body: BlocConsumer<LoginBloc, LoginState>(
            builder: (context, state) => Container(
              color: AppColors.secondary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 상단 로고 영역
                  Column(
                    children: [
                      Image.asset(AppIcons.mangmung1, width: 200, height: 200),
                      SizedBox(height: 20),
                      Text(
                        '나만의 여행 플래너',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '댕꿀트립',
                            style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 7),
                          Image.asset(AppIcons.mangmungFoot, width: 30, height: 30)
                        ],
                      )
                    ],
                  ),

                  // 상단 로고 영역과 로그인 옵션 목록 사이 여백
                  SizedBox(height: 40),

                  // 로그인 옵션 목록
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    itemCount: _authTypeList.length,
                    itemBuilder: (context, index) => LoginOptionItem(_authTypeList[index]),
                    separatorBuilder: (context, index) => SizedBox(height: 8),
                    physics: NeverScrollableScrollPhysics(), // 스크롤 기능 제거
                  ),

                  // 로그인 옵션 목록 하단 여백
                  SizedBox(height: 20),
                ],
              ),
            ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                alreadyLoggedIn: _onAlreadyLoggedIn,
                emailDuplicateError: (email) =>
                    LoginDialog.showEmailDuplicateDialog(context, email),
                requireMoreUserInfo: _onRequireMoreUserInfo,
                navigateToEmailLogin: _navigateToEmailLogin,
                loggedIn: _onLoggedIn,
                error: _onError,
              );
            },
          ),
        ),
      );

//==============================================================================
//  Layout
//==============================================================================

//==============================================================================
//  Methods
//==============================================================================
  void _onAlreadyLoggedIn() {
    // 이미 로그인 된 경우 토스트 노출 후 이전 화면으로 복귀
    CommonUtils.showToastMsg('이미 로그인되어 있습니다.');
    Navigator.pop(context, true);
  }

  void _onRequireMoreUserInfo() {
    CommonUtils.showToastMsg('카카오 로그인은 곧 제공될 예정입니다. 잠시만 기다려 주세요!');
  }

  void _onLoggedIn() {
    // 로그인 성공한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }

  void _onError() {
    //ett 토스트 불필요한 경우에도 노출될 수 있음 확인해야함.
    CommonUtils.showToastMsg('알 수 없는 오류가 발생했습니다.\n다른 방법으로 로그인하거나 다시 시도해 주세요.');
  }

  void _navigateToEmailLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EmailLoginPage(),
      ),
    );
  }
}
