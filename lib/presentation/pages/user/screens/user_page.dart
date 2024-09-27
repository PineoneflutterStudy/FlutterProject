import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/constant/Tag.dart';
import '../../../../core/utils/logger.dart';
import '../../../main/common/component/widget/appbar.dart';
import '../../../main/common/component/widget/double_back_to_exit_widget.dart';
import '../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../../login/screens/login_page.dart';
import '../bloc/user_bloc.dart';
import '../widgets/profile_image.dart';
import 'my_info_page.dart';

/// ## 마이페이지 화면
///
/// author [Eogeum@naver.com]
class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
//==============================================================================
//  Fields
//==============================================================================
  final String _tag = Tag.USER;

  late UserBloc _userBloc;

  User? _currentUser;
  bool _isGuest = true;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc();
    _userBloc.add(UserEvent.started());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 다른 화면에서 돌아올 때마다 UserEvent.started() 이벤트를 트리거
    _userBloc.add(UserEvent.started());
  }

  @override
  void dispose() {
    _userBloc.close();
    super.dispose();
  }

  Widget build(BuildContext context) => BlocProvider(
        create: (_) => _userBloc,
        child: DoubleBackToExitWidget(
          child: Scaffold(
            appBar: MainAppbar(title: '마이페이지'),
            body: BlocConsumer<UserBloc, UserState>(
              builder: (context, state) {
                state.maybeMap(
                  initial: (_) {
                    return MangmungLoadingIndicator();
                  },
                  orElse: () {},
                );

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildProfileCard(_currentUser),
                      _buildMenuCard(_isGuest),
                      _buildFooter(),
                    ],
                  ),
                );
              },
              listener: (context, state) {
                CustomLogger.logger.i('$_tag State Changed. state = ${state.runtimeType}');
                state.when(
                  initial: () {},
                  loggedIn: (currentUser) => setState(() {
                    this._currentUser = currentUser;
                    _isGuest = false;
                  }),
                  loggedOut: () => setState(() {
                    _currentUser = null;
                    _isGuest = true;
                  }),
                  error: () {},
                );
              },
            ),
          ),
        ),
      );

//==============================================================================
//  Layout
//==============================================================================
  Card _buildCustomCard({
    Color color = AppColors.onPrimary,
    double topMargin = 7,
    double bottomMargin = 7,
    required Widget child,
  }) =>
      Card(
        color: color,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.only(left: 13, top: topMargin, right: 13, bottom: bottomMargin),
        child: child,
      );

  Widget _buildProfileCard(User? user) => GestureDetector(
        child: _buildCustomCard(
          topMargin: 0,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ProfileImage(imageUrl: _currentUser?.photoURL, size: 60),
                    SizedBox(width: 16),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Dongle',
                        ),
                        children: [
                          if (_isGuest) ...[
                            TextSpan(
                              text: '로그인',
                              style: TextStyle(color: AppColors.primary, fontSize: 32),
                            ),
                            TextSpan(text: " 또는 "),
                            TextSpan(
                              text: '회원가입',
                              style: TextStyle(color: AppColors.primary, fontSize: 32),
                            ),
                          ] else ...[
                            TextSpan(text: _currentUser?.email ?? ''),
                          ],
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _isGuest
                      ? '로그인하고 더 많은 여행 정보와 편리한 기능을 경험해 보세요!'
                      : '내 정보를 수정하고 프로필을 새롭게 업데이트해 보세요!',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        onTap: _isGuest ? _launchLoginPopup : _navigateMyInfoPage,
      );

  //ett 필요한 메뉴 확정하고 기능 구현 필요
  Widget _buildMenuCard(bool isGuest) => _buildCustomCard(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildMenuItem(
              icon: Icons.headset_mic,
              title: '고객센터/공지사항',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.message_outlined,
              title: '1:1 문의',
              onTap: () {},
            ),
          ],
        ),
      ));

  Widget _buildMenuItem(
          {required IconData icon, required String title, required VoidCallback onTap}) =>
      ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
        onTap: onTap,
      );

  Widget _buildFooter() => Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '© 2024 댕꿀트립. All Rights Reserved.',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 5),
            GestureDetector(
              child: Text(
                '이용약관 | 개인정보처리방침 | 위치기반서비스 이용약관',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              onTap: _navigateTermsPage,
            ),
            SizedBox(height: 5),
            Text(
              '본 서비스의 모든 콘텐츠는 댕꿀트립의 자산이며, 무단 복제 및 배포를 금합니다.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Text(
              '문의사항은 고객센터를 이용해 주세요.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      );

//==============================================================================
//  Methods
//==============================================================================
  /// ## 로그인 화면 실행
  Future<void> _launchLoginPopup() async {
    CustomLogger.logger.i('$_tag _launchLoginPopup()');
    await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
        fullscreenDialog: true,
      ),
    );

    // 다른 화면에서 돌아올 때마다 UserEvent.started() 이벤트를 트리거
    _userBloc.add(UserEvent.started());
  }

  /// ## 내 정보 화면으로 이동
  Future<void> _navigateMyInfoPage() async {
    final User? _tempUser = _currentUser;
    if (_tempUser == null) {
      CustomLogger.logger.e('$_tag `Error - _tempUser == null');
      return;
    }

    CustomLogger.logger.i('$_tag _navigateMyInfoPage()');
    await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => MyInfoPage(_tempUser),
      ),
    );

    // 다른 화면에서 돌아올 때마다 UserEvent.started() 이벤트를 트리거
    _userBloc.add(UserEvent.started());
  }

  /// ## 약관 화면으로 이동
  void _navigateTermsPage() {
    //ett 약관 화면으로 이동해야함.
  }
}
