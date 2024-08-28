import 'dart:ui';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/theme/constant/app_icons.dart';

/// ## 로그인 화면에서 제공하는 인증 타입
///
/// * [providerId] = 제공사 영어 이름 맨 앞자리
/// * [providerName] = 제공사 한국어 이름
/// * [iconPath] = 제공사 로고 아이콘
/// * [bgColor] = 제공사 로그인 버튼 배경 색
/// * [fontColor] = 제공사 로그인 버튼 폰트 색
///
/// author [Eogeum@naver.com]

enum AuthType {
  google('google.com', '구글', AppIcons.imgLoginLogoGoogle, AppColors.googleBg, AppColors.googleFont),
  naver('naver.com', '네이버', AppIcons.imgLoginLogoNaver, AppColors.naverBg, AppColors.naverFont),
  kakao('oidc.kakao', '카카오', AppIcons.imgLoginLogoKakao, AppColors.kakaoBg, AppColors.kakaoFont),
  email('password', '이메일', '', AppColors.emailBg, AppColors.emailFont);

  const AuthType(this.providerId, this.providerName, this.iconPath, this.bgColor, this.fontColor);

  final String providerId;
  final String providerName;
  final String iconPath;
  final Color bgColor;
  final Color fontColor;
}
