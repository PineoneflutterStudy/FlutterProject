import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/common_utils.dart';
import '../../../core/utils/logger.dart';
import '../../main/common/component/widget/appbar.dart';
import '../../main/common/component/widget/mangmung_loding_indicator.dart';
import 'screens/meet_main_screen.dart';
import 'notifiers/meet_firestore/meet_firestore_notifier.dart';
import 'notifiers/meet_firestore/meet_firestore_state.dart';

/**
 * Manager 김경태
 *
 * 약속장소 중간에서 만나!
 *
 *    + 버튼 입력시??? -> 로그인 한 사용자라면 + 한번도 저장한적이 없음 -> dialog로 출발지 입력하도록 하는게 맞음
 *    + 버튼 입력시??? -> 비로그인한 사용자라면 -> 로그인 하게되면 찾은 약속장소를 저장할 수 잇습니다 로그인하시겠습니까? -> 예 아니오 ->
 *    아니오 시 바로 출발지 입력 Dialog 출력  / 예 시 로그인 화면 호출 -> 그리고
 */
final Logger _logger = CustomLogger.logger;

// ======================================================================
// Meet Main Page
// ======================================================================
/// ## Main 으로 보여지는 Meet Page ( 중간지점 찾기 Page )
class MeetPage extends StatelessWidget {
  const MeetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: MeetMainView());
  }
}

// ======================================================================
// Meet Main View (top Appbar)
// ======================================================================
class MeetMainView extends ConsumerStatefulWidget {
  const MeetMainView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MeetMainView();
}

class _MeetMainView extends ConsumerState<MeetMainView> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref.read(meetFireStoreNotifierProvider.notifier).getLoginState();
  }

  @override
  void initState() {
    super.initState();
    _logger.i('[ MeetMainView ] -> initState');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetFireStoreNotifierProvider.notifier).getLoginState();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '우리 어디서 만날까?'),
      body: Consumer(builder: (context, ref, child) {
        final dbState = ref.watch(meetFireStoreNotifierProvider);
        final dbStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.status)); // DB Status
        final loginStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.loginStatus)); // Login Status

        _logger.i('[ MeetPage ] Current Login Status Info -> ${loginStatus}');
        switch (loginStatus) {
          case MeetLoginStatus.initial:
            {
              // Init -> CircularProgress
              return MangmungLoadingIndicator();
            }
          case MeetLoginStatus.nonLogin:
            {
              // 비로그인 -> EmptyMeetScreen
              return MeetMainScreen();
            }
          case MeetLoginStatus.failure:
            {
              // 간단 토스트 팝업 제공 후 -> EmptyMeetScreen
              CommonUtils.showToastMsg('로그인 정보가 확인되지 않습니다.');
              return MeetMainScreen();
            }
          case MeetLoginStatus.login:
            {
              _logger.i('[ MeetPage ] Current FireStore Database Status Info -> ${dbStatus}');
              return MeetMainScreen();
            }
        }
      }),
    );
  }
}
