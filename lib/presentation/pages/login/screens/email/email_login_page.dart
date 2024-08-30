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

  @override
  void initState() {
    super.initState();
    _emailBloc = EmailBloc();
    _emailBloc.add(EmailEvent.started());
  }

  @override
  void dispose() {
    _emailBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _emailBloc,
        child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<EmailBloc, EmailState>(
            builder: (context, state) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 이메일 입력칸
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: '이메일',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16),

                  // 비밀번호 입력칸
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: '비밀번호',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 32),

                  // 로그인 버튼
                  ElevatedButton(
                    onPressed: () {
                      //eff 로그인 버튼 클릭 로직 추가
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
                  )
                ],
              ),
            ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.maybeWhen(
                  orElse: () => null
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
}
