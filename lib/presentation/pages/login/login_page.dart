import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../../core/theme/constant/app_icons.dart';
import '../../../core/utils/common_utils.dart';
import '../../../core/utils/constant/tag.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/model/display/login/auth_type.dart';
import 'bloc/login_bloc.dart';
import 'screens/email/email_login_page.dart';
import 'widgets/login_option_item.dart';

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
                      Image.asset(AppIcons.ImgBeeLaugh, width: 200, height: 200),
                      SizedBox(height: 20),
                      Text('나만의 여행 플래너', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                      Text('개꿀트립🍯', style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
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
                alreadyLoggedIn: () => _onAlreadyLoggedIn(),
                emailDuplicateError: (email) => _onEmailDuplicateError(email),
                requireMoreUserInfo: () => _onRequireMoreUserInfo(),
                navigateToEmailSignIn: () => _onNavigateToEmailSignIn(),
                loggedIn: () => _onLoggedIn(),
                error: () => _onError(),
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
    //ett 로그아웃하고 다른 계정으로 로그인할 건지 팝업을 띄울수도?
    // 이미 로그인 된 경우 토스트 노출 후 이전 화면으로 복귀
    CommonUtils.showToastMsg('이미 로그인되어 있습니다.');
    Navigator.pop(context, true);
  }

  void _onEmailDuplicateError(String email) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "이미 해당 이메일(${email})로 가입된 계정이 존재합니다. 다른 방법으로 로그인해주세요.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              TextSpan(
                text: "\n\ntip: ",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primary),
              ),
              TextSpan(
                text: "로그인 방법을 추가하려면, 마이페이지의 내 정보에서 설정하실 수 있습니다.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("확인"),
          ),
        ],
      ),
    );
  }

  void _onRequireMoreUserInfo() {
    //eff 이메일 정보 추가로 받던 이메일 로그인으로 전환하던 해야함
  }

  void _onLoggedIn() {
    // 로그인 성공한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }

  void _onError() {
    //ett 토스트 불필요한 경우에도 노출될 수 있음 확인해야함.
    CommonUtils.showToastMsg('알 수 없는 오류가 발생했습니다.\n다른 방법으로 로그인하거나 다시 시도해 주세요.');
  }

  void _onNavigateToEmailSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EmailLoginPage(),
      ),
    );
  }
}
