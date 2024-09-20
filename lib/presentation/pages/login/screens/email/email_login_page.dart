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
  signInPwInvalid,
  signInPwMismatch
}

enum Pages {
  emailInput(0),
  passwordInput(1),
  signIn(2);

  const Pages(this.page);

  final int page;
}

class _EmailLoginPage extends State<EmailLoginPage> with SingleTickerProviderStateMixin {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.EMAIL;

  late EmailBloc _emailBloc;
  late TabController _tabController;

  // 이메일 입력 화면
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  // 비밀번호 입력 화면
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();

  // 회원가입 화면
  final TextEditingController _signInPw1Controller = TextEditingController();
  final TextEditingController _signInPw2Controller = TextEditingController();
  final FocusNode _signInPw1FocusNode = FocusNode();
  final FocusNode _signInPw2FocusNode = FocusNode();

  // 에러 상태 관리
  ErrorState _emailErrorState = ErrorState.none;
  ErrorState _passwordErrorState = ErrorState.none;
  ErrorState _signInPw1ErrorState = ErrorState.none;
  ErrorState _signInPw2ErrorState = ErrorState.none;

  @override
  void initState() {
    super.initState();
    _emailBloc = EmailBloc();
    _emailBloc.add(EmailEvent.started());
    _tabController = TabController(length: Pages.values.length, vsync: this);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();

    _passwordController.dispose();
    _passwordFocusNode.dispose();

    _signInPw1Controller.dispose();
    _signInPw2Controller.dispose();
    _signInPw1FocusNode.dispose();
    _signInPw2FocusNode.dispose();

    _tabController.dispose();
    _emailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _emailBloc,
        child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<EmailBloc, EmailState>(
            builder: (context, state) => TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(), // 스크롤 탭 전환 비활성화
              children: [
                _buildEmailInputPage(context),
                _buildPasswordInputPage(context),
                _buildSignInPage(context),
              ],
            ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                emailDuplicated: (email) => LoginDialog.showEmailDuplicateDialog(context, email),
                navigateToPage: (page) => _navigateToPage(page),
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
  Padding _buildEmailInputPage(BuildContext context) => Padding(
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
              onSubmitted: (value) => _onEmailSubmitted(context, value),
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

  Padding _buildPasswordInputPage(BuildContext context) => Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_emailController.text}에 로그인하려면\n비밀번호를 입력해 주세요.',
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
              onSubmitted: (value) => _onPasswordSubmitted(context, value),
              onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
            ),
            SizedBox(height: 16),
            //ett 비밀번호 찾기 화면 필요.
            //ett 입력한 비밀번호 보이게 하는 버튼 필요?
          ],
        ),
      );

  String? _getErrorTextForPassword(ErrorState state) {
    switch (state) {
      case ErrorState.passwordEmpty:
        return '비밀번호를 입력해 주세요.';
      case ErrorState.passwordInvalid:
        return '비밀번호가 일치하지 않습니다. 다시 시도해 주세요.';
      case ErrorState.signInPwInvalid:
        return '비밀번호는 8자 이상의 문자와 숫자를 포함해야 합니다.';
      case ErrorState.signInPwMismatch:
        return '비밀번호가 일치하지 않습니다. 다시 확인해 주세요.';
      default:
        return null;
    }
  }

  Widget _buildClearButton({required TextEditingController controller}) => IconButton(
        icon: Icon(Icons.clear_rounded),
        onPressed: () {
          controller.clear();
          if (controller == _emailController) {
            _onEmailTextChanged(controller.text);
          } else if (controller == _passwordController) {
            _onPasswordTextChanged(controller.text);
          } else if (controller == _signInPw1Controller) {
            _onSignInPw1TextChanged(controller.text);
          } else if (controller == _signInPw2Controller) {
            _onSignInPw2TextChanged(controller.text);
          } else {}
        },
      );

  Padding _buildSignInPage(BuildContext context) => Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${_emailController.text}에 사용할\n비밀번호를 입력해 주세요.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _signInPw1Controller,
              focusNode: _signInPw1FocusNode,
              decoration: InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                contentPadding: EdgeInsets.only(left: 20),
                errorText: _getErrorTextForPassword(_signInPw1ErrorState),
                suffixIcon: _signInPw1Controller.text.isEmpty
                    ? null
                    : _buildClearButton(controller: _signInPw1Controller),
              ),
              obscureText: true,
              autofocus: true,
              onChanged: _onSignInPw1TextChanged,
              onSubmitted: _onSignInPw1Submitted,
              onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
            ),
            SizedBox(height: 16),
            TextField(
              controller: _signInPw2Controller,
              focusNode: _signInPw2FocusNode,
              decoration: InputDecoration(
                labelText: '비밀번호 확인',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                contentPadding: EdgeInsets.only(left: 20),
                errorText: _getErrorTextForPassword(_signInPw2ErrorState),
                suffixIcon: _signInPw2Controller.text.isEmpty
                    ? null
                    : _buildClearButton(controller: _signInPw2Controller),
              ),
              obscureText: true,
              autofocus: true,
              onChanged: _onSignInPw2TextChanged,
              onSubmitted: (value) => _onSignInPw2Submitted(context, value),
              onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
            ),
            SizedBox(height: 16),
          ],
        ),
      );

//==============================================================================
//  Methods
//==============================================================================
  EmailBloc _getBloc(BuildContext context) => context.read<EmailBloc>();

  void _onEmailTextChanged(String email) {
    if (_emailErrorState != ErrorState.none) {
      setState(() => _emailErrorState = ErrorState.none);
    }
  }

  void _onEmailSubmitted(BuildContext context, String email) {
    setState(() {
      if (email.isEmpty) {
        _emailErrorState = ErrorState.emailEmpty;
      } else if (!CommonUtils.isValidEmail(email)) {
        _emailErrorState = ErrorState.emailInvalid;
      } else {
        _emailErrorState = ErrorState.none;
      }
    });

    if (_emailErrorState == ErrorState.none) {
      _getBloc(context).add(EmailEvent.emailSubmitted(email));
    } else {
      _emailFocusNode.requestFocus();
    }
  }

  void _onPasswordTextChanged(String password) {
    if (_passwordErrorState != ErrorState.none) {
      setState(() => _passwordErrorState = ErrorState.none);
    }
  }

  void _onPasswordSubmitted(BuildContext context, String password) {
    setState(() {
      if (password.isEmpty) {
        _passwordErrorState = ErrorState.passwordEmpty;
      } else {
        _passwordErrorState = ErrorState.none;
      }
    });

    if (_passwordErrorState == ErrorState.none) {
      _getBloc(context).add(EmailEvent.passwordSubmitted(password));
    } else {
      _passwordFocusNode.requestFocus();
    }
  }

  void _onSignInPw1TextChanged(String password) {
    if (_signInPw1ErrorState != ErrorState.none) {
      setState(() => _signInPw1ErrorState = ErrorState.none);
    }
  }

  void _onSignInPw2TextChanged(String password) {
    if (_signInPw2ErrorState != ErrorState.none) {
      setState(() => _signInPw2ErrorState = ErrorState.none);
    }
  }

  void _onSignInPw1Submitted(String password) {
    setState(() {
      if (password.isEmpty) {
        _signInPw1ErrorState = ErrorState.passwordEmpty;
      } else if (!CommonUtils.isValidPassword(password)) {
        _signInPw1ErrorState = ErrorState.signInPwInvalid;
      } else {
        _signInPw1ErrorState = ErrorState.none;
      }
    });

    if (_signInPw1ErrorState == ErrorState.none) {
      _signInPw2FocusNode.requestFocus();
    } else {
      _signInPw1FocusNode.requestFocus();
    }
  }

  void _onSignInPw2Submitted(BuildContext context, String password) {
    setState(() {
      if (password.isEmpty) {
        _signInPw2ErrorState = ErrorState.passwordEmpty;
      } else if (password != _signInPw1Controller.text) {
        _signInPw2ErrorState = ErrorState.signInPwMismatch;
      } else {
        _signInPw2ErrorState = ErrorState.none;
      }
    });

    if (_signInPw2ErrorState == ErrorState.none) {
      // _getBloc(context).add(EmailEvent.passwordSubmitted(password));
    } else {
      _signInPw2FocusNode.requestFocus();
    }
  }

  void _navigateToPage(Pages page) {
    _tabController.animateTo(page.page);
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
}
