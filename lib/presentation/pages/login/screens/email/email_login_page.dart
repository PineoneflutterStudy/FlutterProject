//==============================================================================
//  Fields
//==============================================================================
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/constant/tag.dart';
import '../../../../../core/utils/logger.dart';
import '../../bloc/email_bloc.dart';

const String _tag = Tag.EMAIL;

/// ## 이메일 로그인 화면
///
/// author [Eogeum@naver.com]
class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPage();
}

class _EmailLoginPage extends State<EmailLoginPage> {
  late EmailBloc _emailBloc;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  VoidCallback? emailListener;
  VoidCallback? passwordListener;

  @override
  void initState() {
    super.initState();
    _emailBloc = EmailBloc();
    _emailBloc.add(EmailEvent.started());
  }

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();

    emailController.dispose();
    passwordController.dispose();

    _emailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _emailBloc,
        child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<EmailBloc, EmailState>(
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 이메일 입력칸
                TextField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  decoration: InputDecoration(
                    labelText: '이메일',
                    border: OutlineInputBorder(),
                    errorText: _getErrorTextForEmail(state),
                    suffixIcon: _buildClearButton(controller: emailController),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),

                // 비밀번호 입력칸
                TextField(
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    border: OutlineInputBorder(),
                    errorText: _getErrorTextForPassword(state),
                    suffixIcon: _buildClearButton(controller: passwordController),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 32),

                // 로그인 버튼
                ElevatedButton(
                  onPressed: () {
                    _getBloc(context).add(EmailEvent.loginButtonPressed(
                      emailController.text,
                      passwordController.text,
                    ));
                  },
                  child: Text('로그인'),
                ),
                SizedBox(height: 16),

                // 비밀번호 찾기 및 이메일 회원가입 버튼
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        //eff 비밀번호 찾기 화면으로 이동 로직 추가
                      },
                      child: Text('비밀번호 찾기'),
                    ),
                    SizedBox(width: 16),

                    TextButton(
                      onPressed: () {
                        //eff 이메일 회원가입 화면으로 이동 로직 추가
                      },
                      child: Text('회원가입'),
                    ),
                  ],
                ),
              ],
            ),
            listener: (context, state) {
              CustomLogger.logger
                  .i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                validationFailed: (isEmailEmpty, isEmailInvalid, isPasswordEmpty) =>
                    _onValidationFailed(isEmailEmpty, isEmailInvalid, isPasswordEmpty),
                userNotFound: () => _onEmailOrPasswordError(),
                wrongPassword: () => _onEmailOrPasswordError(),
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
  EmailBloc _getBloc(BuildContext context) => context.read<EmailBloc>();

  String? _getErrorTextForEmail(EmailState state) => state.maybeWhen(
      validationFailed: (isEmailEmpty, isEmailInvalid, isPasswordEmpty) {
        final String? errorText;
        if (isEmailEmpty) {
          errorText = '이메일 주소를 입력해 주세요.';
        } else if (isEmailInvalid) {
          errorText = '올바른 이메일 주소를 입력해 주세요.';
        } else {
          errorText = null;
        }
        return errorText;
      },
      orElse: () => null);

  String? _getErrorTextForPassword(EmailState state) => state.maybeWhen(
      validationFailed: (isEmailEmpty, isEmailInvalid, isPasswordEmpty) {
        return isPasswordEmpty ? '비밀번호를 입력해 주세요' : null;
      },
      orElse: () => null);

  Widget _buildClearButton({required TextEditingController controller}) =>
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          controller.clear();
        },
      );

//==============================================================================
//  Methods
//==============================================================================
  _onValidationFailed(isEmailEmpty, isEmailInvalid, isPasswordEmpty) {
    bool focusRequested = false; // 1회만 포커스 요청하기 위한 포커스 요청 여부

    // 기존에 등록된 리스너 제거
    if (emailListener != null) {
      emailFocusNode.removeListener(emailListener!);
    }
    if (passwordListener != null) {
      passwordFocusNode.removeListener(passwordListener!);
    }

    if (isEmailEmpty || isEmailInvalid) {
      emailFocusNode.requestFocus();
      focusRequested = true;

      // 새로운 이메일 리스너 생성 및 등록
      VoidCallback? tempEmailListener;
      tempEmailListener = () {
        if (!emailFocusNode.hasFocus) {
          // eff 이메일 에러 텍스터 제거 해야함
          if (emailListener != null) {
            emailFocusNode.removeListener(emailListener!);
          }
        }
      };
      emailFocusNode.addListener(tempEmailListener);
      emailListener = tempEmailListener;
    }

    if (isPasswordEmpty) {
      if (!focusRequested) {
        passwordFocusNode.requestFocus();
      }

      // 새로운 비밀번호 리스너 생성 및 등록
      VoidCallback? tempPasswordListener;
      tempPasswordListener = () {
        if (!passwordFocusNode.hasFocus) {
          // eff 비밀번호 에러 텍스터 제거 해야함
          if (passwordListener != null) {
            passwordFocusNode.removeListener(passwordListener!);
          }
        }
      };
      passwordFocusNode.addListener(tempPasswordListener);
      passwordListener = tempPasswordListener;
    }
  }

  _onEmailOrPasswordError() {
    CommonUtils.showToastMsg('이메일 또는 비밀번호가 일치하지 않습니다. 다시 시도해 주세요.');
  }

  _onLoggedIn() {
    // 로그인 성공한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }

  _onError() {
    //ett 토스트 불필요한 경우에도 노출될 수 있음 확인해야함.
    CommonUtils.showToastMsg('알 수 없는 오류가 발생했습니다.\n다른 방법으로 로그인하거나 다시 시도해 주세요.');
  }
}
