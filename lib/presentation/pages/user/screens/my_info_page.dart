import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
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

              final User user = widget._currentUser;

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
                                onTap: () => UserDialog.showProfileImageEditDialog(context,
                                    hideResetImage: user.photoURL?.isEmpty ?? true,
                                    onCameraPressed: () {
                                  //ett 카메라 호출
                                }, onGalleryPressed: () {
                                  //ett 갤러리 호출
                                }, onResetImagePressed: () {
                                  //ett 기본 이미지 적용
                                }),
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
                        onTap: () {
                          _myInfoBloc.add(MyInfoEvent.logoutRequested());
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            listener: (context, state) {
              CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
              state.when(
                initial: () {},
                loggedOut: _onLoggedOut,
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
  void _onLoggedOut() {
    // 로그아웃 한 경우 이전 화면으로 복귀
    Navigator.pop(context, true);
  }
}
