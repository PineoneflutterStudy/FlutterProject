import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/constant/tag.dart';
import '../../../../../core/utils/logger.dart';
import '../../bloc/email_bloc.dart';

/// ## 이메일 로그인 화면
///
/// author [Eogeum@naver.com]
class EmailLoginPage extends StatefulWidget {
  const EmailLoginPage({super.key});

  @override
  State<EmailLoginPage> createState() => _EmailLoginPage();
}

class _EmailLoginPage extends State<EmailLoginPage> with SingleTickerProviderStateMixin {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.EMAIL;

  late EmailBloc _emailBloc;
  late TabController _tabController;

  // 이메일
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  // 플래그
  bool _isEmailEmpty = true;
  bool _showEmailEmptyMessage = false;
  bool _showEmailInvalidMessage = false;

  @override
  void initState() {
    super.initState();
    _emailBloc = EmailBloc();
    _emailBloc.add(EmailEvent.started());
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _emailController.dispose();

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
                // Email 입력 화면
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
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
                          errorText: _getErrorTextForEmail(),
                          suffixIcon: _isEmailEmpty
                              ? null
                              : _buildClearButton(controller: _emailController),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => setState(() => _isEmailEmpty = value.isEmpty),
                        onSubmitted: (value) {
                          setState(() {
                            if (_isEmailEmpty) {
                              _showEmailEmptyMessage = true;
                              _showEmailInvalidMessage = false;
                            } else if (CommonUtils.isValidEmail(value)) {
                              _showEmailEmptyMessage = false;
                              _showEmailInvalidMessage = true;
                            }
                          },);

                          if (_showEmailEmptyMessage || _showEmailInvalidMessage) {
                            return;
                          }

                          _getBloc(context).add(EmailEvent.emailSubmitted(value));
                        },
                        onTapOutside: (event) => FocusScope.of(context).unfocus(), // 포커스 해제
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '로그인을 위해 비밀번호를 입력해 주세요.',
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),


                    ],
                  ),
                ),
              ],
            ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
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

  String? _getErrorTextForEmail() {
    final String? errorText;
    if (_showEmailEmptyMessage) {
      errorText = '이메일 주소를 입력해 주세요.';
    } else if (_showEmailInvalidMessage) {
      errorText = '올바른 이메일 주소를 입력해 주세요.';
    } else {
      errorText = null;
    }
    return errorText;
  }

  String? _getErrorTextForPassword(EmailState state) {
    //     return isPasswordEmpty ? '비밀번호를 입력해 주세요' : null;
    return null;
  }

  Widget _buildClearButton({required TextEditingController controller}) => IconButton(
        icon: Icon(Icons.clear_rounded),
        onPressed: () => controller.clear(),
      );

//==============================================================================
//  Methods
//==============================================================================
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
