//==============================================================================
//  Fields
//==============================================================================
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              child: Column(),
            ),
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.maybeWhen(orElse: () => null);
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
