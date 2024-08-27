import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/model/display/login/auth_type.dart';
import '../bloc/login_bloc.dart';

//==============================================================================
//  Fields
//==============================================================================

/// ## 로그인 옵션 목록에 노출 될 아이템
///
/// author [Eogeum@naver.com]
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
          '${authType.providerName} 로그인',
          style: TextStyle(fontSize: 36, color: authType.fontColor),
        ),
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(authType.bgColor),
            overlayColor: WidgetStateProperty.all(Colors.transparent)),
        onPressed: () => _onItemPressed(context, authType),
      );

  /// 아이콘 있는 경우 노출할 아이콘과 텍스트로 구성된 아이템
  Widget _buildIconItem(BuildContext context) => TextButton.icon(
        icon: Image.asset(
          authType.iconPath,
          width: 36,
          height: 36,
        ),
        label: Text(
          '${authType.providerName} 로그인',
          style: TextStyle(fontSize: 36, color: authType.fontColor),
        ),
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(authType.bgColor),
            overlayColor: WidgetStateProperty.all(Colors.transparent)),
        onPressed: () => _onItemPressed(context, authType),
      );

//==============================================================================
//  Methods
//==============================================================================
  void _onItemPressed(BuildContext context, AuthType authType) {
    BlocProvider.of<LoginBloc>(context).add(LoginEvent.loginOptionItemPressed(authType));
  }
}
