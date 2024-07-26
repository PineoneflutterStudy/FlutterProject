import 'package:flutter/material.dart';

import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/login/auth_type.dart';
import 'login_option_list.dart';

//==============================================================================
//  Fields
//==============================================================================
const String _tag = '[Login]';

/// ## 로그인 옵션 목록에 노출 될 아이템
///
///  * @author Eogeum@naver.com
///  * @since 2024-07-26
class LoginOptionItem extends StatelessWidget {
  final AuthType authType;

  const LoginOptionItem(this.authType);

  @override
  Widget build(BuildContext context) =>
      authType.iconPath.isEmpty ? _buildNormalItem(context) : _buildIconItem(context);

//==============================================================================
//  Layout
//==============================================================================
  /// 아이콘 없는 경우 노출할 텍스트만으로 구성된 아이템
  Widget _buildNormalItem(BuildContext context) => TextButton(
        child: Text(
          '${authType.name} 로그인',
          style: TextStyle(fontSize: 36, color: authType.fontColor),
        ),
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(authType.bgColor)),
        onPressed: () => _onPressedOptionItem(context, authType),
      );

  /// 아이콘 있는 경우 노출할 아이콘과 텍스트로 구성된 아이템
  Widget _buildIconItem(BuildContext context) => TextButton.icon(
        icon: Image.asset(
          authType.iconPath,
          width: 36,
          height: 36,
        ),
        label: Text(
          '${authType.name} 로그인',
          style: TextStyle(fontSize: 36, color: authType.fontColor),
        ),
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(authType.bgColor)),
        onPressed: () => _onPressedOptionItem(context, authType),
      );

//==============================================================================
//  Methods
//==============================================================================
  /// 상위 위젯에 [LoginOptionList] 존재 한다면 [LoginOptionList.onPressedOptionItem]실행
  void _onPressedOptionItem(BuildContext context, AuthType authType) {
    LoginOptionList? loginOptionList = context.findAncestorWidgetOfExactType<LoginOptionList>();
    if (loginOptionList == null) {
      CustomLogger.logger.e('$_tag Error - loginOptionList == NULL');
      return;
    }

    loginOptionList.onPressedOptionItem(authType);
  }
}
