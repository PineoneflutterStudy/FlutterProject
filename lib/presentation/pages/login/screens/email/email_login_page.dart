import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/constant/tag.dart';
import '../../../../../core/utils/logger.dart';
import '../../bloc/email_bloc.dart';
import '../dialog/login_dialog.dart';

/// ## 이메일 로그인 화면
///
/// author [Eogeum@naver.com]
class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPage();
}

enum ErrorState {
  none,
  emailEmpty,
  emailInvalid,
  passwordEmpty,
  passwordInvalid,
}

class _EmailLoginPage extends State<EmailLoginPage> with SingleTickerProviderStateMixin {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.EMAIL;

  late EmailBloc _emailBloc;
  late PageController _pageController;

  // 이메일
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  // 비밀번호
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  // 에러 상태 관리
  ErrorState _emailErrorState = ErrorState.none;
  ErrorState _passwordErrorState = ErrorState.none;

  @override
  void initState() {
    super.initState();
    _emailBloc = EmailBloc();
    _emailBloc.add(EmailEvent.started());
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _passwordFocusNode.dispose();
    _passwordController.dispose();

    _emailFocusNode.dispose();
    _emailController.dispose();

    _pageController.dispose();
    _emailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocProvider(
        create: (_) => _emailBloc,
        child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<EmailBloc, EmailState>(
            builder: (context, state) =>
                PageView(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(), // 스크롤 탭 전환 비활성화
                  children: [
                    _buildEmailInputPage(context),
                    _buildPasswordInputPage(context),
                  ],
                ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                emailDuplicated: (email) => LoginDialog.showEmailDuplicateDialog(context, email),
                wrongPassword: _onWrongPassword,
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
  Padding _buildEmailInputPage(BuildContext context) =>
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '로그인 또는 회원가입에\n사용할 이메일 주소를 입력해 주세요.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _emailController,
              focusNode: _emailFocusNode,
              decoration: InputDecoration(
                labelText: '이메일',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                contentPadding: EdgeInsets.only(left: 20),
                errorText: _getErrorTextForEmail(_emailErrorState),
                suffixIcon: _emailController.text.isEmpty
                    ? null
                    : _buildClearButton(controller: _emailController),
              ),
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              onChanged: _onEmailTextChanged,
              onSubmitted: _onEmailSubmitted,
              onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
            ),
          ],
        ),
      );

  String? _getErrorTextForEmail(ErrorState state) {
    switch (state) {
      case ErrorState.emailEmpty:
        return '이메일 주소를 입력해 주세요.';
      case ErrorState.emailInvalid:
        return '올바른 이메일 주소를 입력해 주세요.';
      default:
        return null;
    }
  }

  Padding _buildPasswordInputPage(BuildContext context) =>
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_emailController.text}에 로그인하려면 비밀번호를 입력해 주세요.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              focusNode: _passwordFocusNode,
              decoration: InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                contentPadding: EdgeInsets.only(left: 20),
                errorText: _getErrorTextForPassword(_passwordErrorState),
                suffixIcon: _passwordController.text.isEmpty
                    ? null
                    : _buildClearButton(controller: _passwordController),
              ),
              obscureText: true,
              autofocus: true,
              onChanged: _onPasswordTextChanged,
              onSubmitted: _onPasswordSubmitted,
              onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
            ),
          ],
        ),
      );

  String? _getErrorTextForPassword(ErrorState state) {
    switch (state) {
      case ErrorState.passwordEmpty:
        return '비밀번호를 입력해 주세요.';
      case ErrorState.passwordInvalid:
        return '비밀번호가 일치하지 않습니다. 다시 시도해 주세요.';
      default:
        return null;
    }
  }

  Widget _buildClearButton({required TextEditingController controller}) =>
      IconButton(
        icon: Icon(Icons.clear_rounded),
        onPressed: () {
          controller.clear();
          _onEmailTextChanged(controller.text);
        },
      );

//==============================================================================
//  Methods
//==============================================================================
  EmailBloc _getBloc(BuildContext context) => context.read<EmailBloc>();

  void _onEmailTextChanged(String email) {
    setState(() {
      if (email.isEmpty) {
        _emailErrorState = ErrorState.emailEmpty;
      } else if (!CommonUtils.isValidEmail(email)) {
        _emailErrorState = ErrorState.emailInvalid;
      } else {
        _emailErrorState = ErrorState.none;
      }
    });
  }

  void _onEmailSubmitted(String email) {
    if (_emailErrorState == ErrorState.none) {
      _getBloc(context).add(EmailEvent.emailSubmitted(_emailController.text));
    } else {
      _emailFocusNode.requestFocus();
    }
  }

  void _onPasswordTextChanged(String password) {
    setState(() {
      if (password.isEmpty) {
        _passwordErrorState = ErrorState.passwordEmpty;
      } else {
        _passwordErrorState = ErrorState.none;
      }
    });
  }

  void _onPasswordSubmitted(String password) {
    if (_passwordErrorState == ErrorState.none) {
      _getBloc(context).add(EmailEvent.passwordSubmitted(_passwordController.text));
    } else {
      _passwordFocusNode.requestFocus();
    }
  }

  void _onWrongPassword() {
    setState(() => _passwordErrorState = ErrorState.passwordInvalid);
  }

  void _onLoggedIn() {
    // 로그인 성공한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }

  void _onError() {
    //ett 토스트 불필요한 경우에도 노출될 수 있음 확인해야함.
    CommonUtils.showToastMsg('알 수 없는 오류가 발생했습니다.\n다른 방법으로 로그인하거나 다시 시도해 주세요.');
  }

  void a() {
    // _pageController.animateToPage(page, duration: duration, curve: curve)
  }
}
