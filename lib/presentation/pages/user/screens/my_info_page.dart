import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/logger.dart';
import '../../../main/common/component/widget/appbar.dart';
import '../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../bloc/my_info/my_info_bloc.dart';
import '../dialogs/user_dialog.dart';
import '../widgets/profile_image.dart';

/// ## 내 정보 화면
///
/// author [Eogeum@naver.com]
class MyInfoPage extends StatefulWidget {
  final User _user;

  const MyInfoPage(this._user, {super.key});

  @override
  State<MyInfoPage> createState() => _MyInfoPage();
}

class _MyInfoPage extends State<MyInfoPage> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.MY_INFO;

  late MyInfoBloc _myInfoBloc;

  late User _user;

  @override
  void initState() {
    super.initState();
    _user = widget._user;
    _myInfoBloc = MyInfoBloc();
    _myInfoBloc.add(MyInfoEvent.started(_user));
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
              return state.maybeMap(
                initial: (_) => MangmungLoadingIndicator(),
                loading: (_) => MangmungLoadingIndicator(),
                orElse: () => buildMyInfoScreen(context, _user),
              );
            },
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                loading: () {},
                updated: _onUpdated,
                loggedOut: _onLoggedOut,
                error: _onError,
              );
            },
          ),
        ),
      );

//==============================================================================
//  Layout
//==============================================================================
  SingleChildScrollView buildMyInfoScreen(BuildContext context, User user) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // 프로필 이미지
            Center(
              child: Stack(
                children: [
                  GestureDetector(
                    child: ProfileImage(imageUrl: user.photoURL, size: 100),
                    onTap: () {
                      //ett 누르면 사진 확대
                    },
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: GestureDetector(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.primary,
                        child: Icon(Icons.edit, size: 16),
                      ),
                      onTap: () => UserDialog.showProfileImageEditDialog(
                        context,
                        hideResetImage: user.photoURL?.isEmpty ?? true,
                        callbacks: (option, imageFile) => _getBloc(context)
                            .add(MyInfoEvent.profileImageEditOptionSelected(option, imageFile)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 사용자 이름
            SizedBox(height: 10),
            Text('${user.displayName ?? ''} 님', style: TextStyle(fontSize: 24)),

            // 로그아웃 버튼
            GestureDetector(
              child: Text('로그아웃', style: TextStyle(fontSize: 30)),
              onTap: () => _getBloc(context).add(MyInfoEvent.logoutRequested()),
            ),
          ],
        ),
      ),
    );
  }

//==============================================================================
//  Methods
//==============================================================================
  MyInfoBloc _getBloc(BuildContext context) => context.read<MyInfoBloc>();

  void _onUpdated(User user) {
    setState(() => _user = user);
  }

  void _onLoggedOut() {
    // 로그아웃 한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }

  void _onError(String errorMessage) {
    CommonUtils.showToastMsg(errorMessage);
  }
}
