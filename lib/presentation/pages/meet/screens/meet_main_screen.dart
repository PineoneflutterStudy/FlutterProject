import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/logger.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
import '../../../main/common/component/widget/mangmung_loding_indicator.dart';
import '../../login/login_page.dart';
import '../notifiers/meet_firestore/meet_firestore_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_state.dart';
import '../dialogs/start_address_input_dialog.dart';
import '../widgets/empty_meet_widget.dart';
import '../widgets/save_meet_widget.dart';

final Logger _logger = CustomLogger.logger;

// ======================================================================
// Empty Meet Screen
// ======================================================================
/// ## 저장된 약속장소 내역이 없을떄 출력하는 Screen
/// ### Center 에 위치한 + 버튼 / 약속이 없는것을 알리는 간단한 문구
class MeetMainScreen extends StatelessWidget {
  const MeetMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: MeetMainScreenView());
  }
}

// ======================================================================
// Empty Meet Screen
// ======================================================================
class MeetMainScreenView extends ConsumerStatefulWidget {
  const MeetMainScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MeetMainScreenView();
}

class _MeetMainScreenView extends ConsumerState<MeetMainScreenView> {

  @override
  void initState() {
    super.initState();
    _logger.i('[ _MeetMainScreenView ] initState!!');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetFireStoreNotifierProvider.notifier).getLocationDB();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final loginStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.loginStatus)); // Login Status -> 로그인 유도
        final dbStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.status)); // Firestore DB Status
        final deleteStatus = ref.watch(meetFireStoreNotifierProvider.select((p) => p.deleteStatus)); // Item Delete Status
        final dbState = ref.watch(meetFireStoreNotifierProvider);

        _logger.i('[ MeetMainScreenView ] Current Login Status Info -> ${loginStatus}');

        switch (loginStatus) {
          case MeetLoginStatus.initial:
            {
              return MangmungLoadingIndicator();
            }
          case MeetLoginStatus.nonLogin:
          case MeetLoginStatus.failure:
            {
              return EmptyMeetWidget(
                  onBtnTap: () {
                    // 비로그인 / 로그인 실패 -> 로그인 유도 화면 이동!!
                    CommonDialog.confirmDialog(
                        context: context,
                        title: '로그인 확인',
                        content:
                        '로그인 시 약속장소를 저장할 수 있습니다. \n로그인 하시겠습니까?',
                        btn1Text: '아니오',
                        btn2Text: '네',
                        onBtn1Pressed: (context) {
                          // 확인 팝업 종료 후 출발지 입력 Dialog Show
                          Navigator.of(context).pop();
                          showDialog(
                            context: context,
                            builder: (context) =>
                                StartAddressInputDialog(),
                          ).then((value) {
                            if (value != null) {
                              var result = value as Map<String,dynamic>;

                              final isUpdate = result['update'];

                              _logger.i('비로그인 사용자 -> Map 종료 값 확인 -> ${isUpdate}');
                              if (isUpdate) {
                                ref.read(meetFireStoreNotifierProvider.notifier).getLocationDB();
                              }
                            }
                          });
                        },
                        onBtn2Pressed: (context) async {
                          Navigator.of(context).pop();
                          // 로그인 화면 실행 및 결과 대기
                          final result = await Navigator.push<bool>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                              fullscreenDialog: true,
                            ),
                          );

                          // 로그인 화면에서 로그인 진행 결과 -> true : 로그인 성공! / null : 로그인 성공적으로 진행하지 않고 빠져나옴...
                          if (result == true) {
                            _logger.i('Login Result is Success! Current Login User!');
                            ref.read(meetFireStoreNotifierProvider.notifier).updateLoginState(true);
                            ref.read(meetFireStoreNotifierProvider.notifier).getLocationDB();
                            return;
                          }

                          _logger.i('Login Result is Failure Or Cancel... Current Non-Login User..');
                          ref.read(meetFireStoreNotifierProvider.notifier).updateLoginState(false);
                        });
                  }
              );
            }
          case MeetLoginStatus.login:
            {
              _logger.i('[ _MeetMainScreenView ] Current FireStore Database Status Info -> ${dbStatus}');
              switch (dbStatus) {
                case MeetFireStoreStatus.initial:
                case MeetFireStoreStatus.loading:
                  {
                    return MangmungLoadingIndicator();
                  }
                case MeetFireStoreStatus.failure:
                  {
                    return EmptyMeetWidget(
                    onBtnTap: () {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            StartAddressInputDialog(),
                      ).then((value) {
                        if (value != null) {
                          var result = value as Map<String,dynamic>;

                          final isUpdate = result['update'];

                          _logger.i('로그인 사용자 -> Map 종료 값 확인 -> ${isUpdate}');
                          if (isUpdate) {
                            ref.read(meetFireStoreNotifierProvider.notifier).getLocationDB();
                          }
                        }
                      });
                    });
                  }
                case MeetFireStoreStatus.success:
                  {
                    return SaveMeetWidget();
                  }
              }
            }
        }
      }),
    );
  }
}
