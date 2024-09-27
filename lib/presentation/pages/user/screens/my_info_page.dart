import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/logger.dart';
import '../../../main/common/component/widget/appbar.dart';
import '../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../bloc/my_info/my_info_bloc.dart';

/// ## 내 정보 화면
///
/// author [Eogeum@naver.com]
class MyInfoPage extends StatefulWidget {
  final User _currentUser;

  const MyInfoPage(this._currentUser, {super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPage();
}

class _MyInfoPage extends State<MyInfoPage> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.MY_INFO;

  late MyInfoBloc _myInfoBloc;

  @override
  void initState() {
    super.initState();
    _myInfoBloc = MyInfoBloc();
    _myInfoBloc.add(MyInfoEvent.started());
  }

  @override
  void dispose() {
    _myInfoBloc.close();
    super.dispose();
  }

  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _myInfoBloc,
        child: Scaffold(
          appBar: MainAppbar(title: '내 정보'),
          body: BlocConsumer<MyInfoBloc, MyInfoState>(
            builder: (context, state) {
              state.maybeMap(
                initial: (_) {
                  return MangmungLoadingIndicator();
                },
                orElse: () {},
              );

              return SingleChildScrollView(
                child: Column(
                  children: [],
                ),
              );
            },
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
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
