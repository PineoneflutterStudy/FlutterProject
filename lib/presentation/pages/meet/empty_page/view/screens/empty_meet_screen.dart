import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../../core/theme/constant/app_colors.dart';
import '../../../../../../core/utils/logger.dart';
import '../../../../../main/common/component/dialog/common_dialog.dart';
import '../../../../login/login_page.dart';
import '../../../main_meet_page/notifier/meet_page_notifier.dart';
import '../../../main_meet_page/notifier/meet_page_state.dart';
import '../dialogs/start_address_input_dialog.dart';

final Logger _logger = CustomLogger.logger;

// ======================================================================
// Empty Meet Screen
// ======================================================================
/// ## 저장된 약속장소 내역이 없을떄 출력하는 Screen
/// ### Center 에 위치한 + 버튼 / 약속이 없는것을 알리는 간단한 문구
class EmptyMeetScreen extends StatelessWidget {
  const EmptyMeetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: EmptyMeetScreenView());
  }
}

// ======================================================================
// Empty Meet Screen
// ======================================================================
class EmptyMeetScreenView extends ConsumerStatefulWidget {
  const EmptyMeetScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EmptyMeetScreenView();
}

class _EmptyMeetScreenView extends ConsumerState<EmptyMeetScreenView> {
  @override
  void initState() {
    super.initState();
    /*WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetPageStateProvider.notifier).getLoginState();
    });*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final loginStatus = ref.watch(
            meetPageStateProvider.select((p) => p.loginStatus)); // Login Status

        _logger.i(
            '[ EmptyMeetScreen ] Current Login Status Info -> ${loginStatus}');

        switch (loginStatus) {
          case MeetPageLoginStatus.initial:
            {
              return CircularProgressIndicator();
            }
          case MeetPageLoginStatus.nonLogin:
          case MeetPageLoginStatus.failure:
          case MeetPageLoginStatus.login:
            {
              // 비로그인과 로그인 실패 -> 로그인 화면으로 넘기는 기능 필요 / 로그인 사용자( DB에 데이터가 없음 ) -> 출발지 입력 Dialog 실행 가능!!
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    // 제스처 감지
                    onTap: () {
                      switch (loginStatus) {
                        case MeetPageLoginStatus.login:
                          {
                            // 로그인 사용자 -> 출발지 입력 Dialog 제공!
                            showDialog(
                              context: context,
                              builder: (context) => StartAddressInputDialog(),
                            );
                          }
                        case MeetPageLoginStatus.nonLogin:
                        case MeetPageLoginStatus.failure:
                          {
                            // 비로그인 / 로그인 실패 -> 로그인 유도 화면 이동!!
                            CommonDialog.confirmDialog(
                                context: context,
                                title: '로그인 확인',
                                content:
                                    '로그인 시 약속장소 찾기 정보를 저장할 수 있습니다.\n로그인 하시겠습니까?',
                                btn1Text: '아니오',
                                btn2Text: '네',
                                onBtn1Pressed: (context) {
                                  // 확인 팝업 종료 후 출발지 입력 Dialog Show
                                  Navigator.of(context).pop();
                                  showDialog(
                                    context: context,
                                    builder: (context) =>
                                        StartAddressInputDialog(),
                                  );
                                },
                                onBtn2Pressed: (context) {
                                  Navigator.of(context).pop();
                                  // 로그인 화면 실행!
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                      fullscreenDialog: true,
                                    ),
                                  );
                                });
                          }

                          break;
                        default:
                      }
                    },
                    child: Icon(
                      Icons.add_circle_sharp,
                      color: AppColors.primary,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      '정해진 약속이 없네요?\n버튼을 입력해서 약속을 정해봐요!',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              );
            }
        }
      }),
    );
  }
}
