import 'dart:ui';

import '../../../../core/theme/constant/app_icons.dart';

/**
 * 로그인 화면에서 제공하는 인증 타입
 *
 * [code] = 제공사 영어 이름 맨 앞자리
 * [name] = 제공사 한국어 이름
 * [iconPath] = 제공사 로고 아이콘
 * [bgColor] = 제공사 로그인 버튼 배경 색
 * [fontColor] = 제공사 로그인 버튼 폰트 색
 *
 * @author Eogeum@naver.com
 * @since 2024-07-03
 */
enum AuthType {
  google('G', '구글', AppIcons.imgLoginLogoGoogle, Color(0xFFFFFFFF),
      Color(0xFF000000)),
  naver('N', '네이버', AppIcons.imgLoginLogoNaver, Color(0xFF03C75A),
      Color(0xFFFFFFFF)),
  kakao('K', '카카오', AppIcons.imgLoginLogoKakao, Color(0xFFFEE500),
      Color(0xDB000000)),
  // email('E', '이메일', AppIcons.imgLoginEmail, Color(0xFFFFFFFF),
  //     Color(0xFFFFFFFF))
  ;

  const AuthType(
      this.code, this.name, this.iconPath, this.bgColor, this.fontColor);

  final String code;
  final String name;
  final String iconPath;
  final Color bgColor;
  final Color fontColor;
}
