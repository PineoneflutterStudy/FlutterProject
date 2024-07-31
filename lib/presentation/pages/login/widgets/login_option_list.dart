import 'package:flutter/cupertino.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';
import '../funtion/auth.dart';
import 'login_option_item.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

/// ## 로그인 옵션 목록
/// 구글, 네이버, 카카오, 이메일 로그인을 지원한다.
///
/// author [Eogeum@naver.com]
class LoginOptionList extends StatelessWidget {
  const LoginOptionList();

  @override
  Widget build(BuildContext context) {
    final authTypeList = AuthType.values;
    return Column(
      children: [
        SizedBox(),
        // Image.asset(), //eff 로고 이미지 추가될 예정
        SizedBox(),

        Expanded(
            child: //eff Expanded 요건 사이즈 확정되면 삭제
                ListView.builder(
          itemCount: authTypeList.length,
          itemBuilder: (context, index) => LoginOptionItem(authTypeList[index]),
        ))
      ],
    );
  }

//==============================================================================
//  Layout
//==============================================================================

//==============================================================================
//  Methods
//==============================================================================
  /// 인증 타입 별로 로그인 시도하고 파이어베이스에 등록
  void onPressedOptionItem(AuthType authType) {
    switch (authType) {
      case AuthType.google:
        launchGoogleLogin();
      case AuthType.naver:
        launchNaverLogin();
      case AuthType.kakao:
        launchKakaoLogin();
      case AuthType.email:
        launchSignInPage();
    }
  }

  void launchSignInPage() {
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
