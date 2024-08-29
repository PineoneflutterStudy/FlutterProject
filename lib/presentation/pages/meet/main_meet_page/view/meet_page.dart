import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utils/common_utils.dart';
import '../../../../../core/utils/logger.dart';
import '../../../../../data/data_source/local_storage/meet/local_prefs_storage.dart';
import '../../../../../data/repository_impl/meet/start_address_repository_impl.dart';
import '../../../../../domain/usecase/meet/get_all_address.dart';
import '../../../../../main.dart';
import '../../../../main/common/component/widget/appbar.dart';
import '../../empty_page/view/screens/empty_meet_screen.dart';
import '../notifier/meet_page_notifier.dart';
import '../notifier/meet_page_state.dart';

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
  late GetAllAddress _getAllAddress;

  @override
  void initState() {
    super.initState();
    _logger.i('[ MeetMainView ] -> initState');
    // todo initState상태에서 바로 로그인 체크 -> 상태관리로 확인하여 비로그인 / 로그인 / 로그인했는데 DB 비었을떄 에 따라 화면 다르게 출력되도록 실행
    final localStorage = LocalPrefsStorageImpl(sharedPreferences: sharedPref);
    final repo = StartAddressRepositoryImpl(localPrefsStorage: localStorage);
    _getAllAddress = GetAllAddress(repository: repo);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(meetPageStateProvider.notifier).getLoginState();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: '우리 어디서 만날까?'),
      body: Consumer(builder: (context, ref, child) {
        final dbState = ref.watch(meetPageStateProvider);
        final dbStatus = ref
            .watch(meetPageStateProvider.select((p) => p.status)); // DB Status
        final loginStatus = ref.watch(
            meetPageStateProvider.select((p) => p.loginStatus)); // Login Status

        _logger.i('[ MeetPage ] Current Login Status Info -> ${loginStatus}');
        switch (loginStatus) {
          case MeetPageLoginStatus.initial:
            {
              // Init -> CircularProgress
              return CircularProgressIndicator();
            }
          case MeetPageLoginStatus.nonLogin:
            {
              // todo -> 바로 비어잇는 화면 보여주지 않고 로그인중이지 확인함 -> 로그인해고 db 조회햇는데 없다면 비어있는 화면 출력 / 비로그인 시에도 비어있는 화면 출력
              // 비로그인 -> EmptyMeetScreen
              return EmptyMeetScreen();
            }
          case MeetPageLoginStatus.failure:
            {
              // 간단 토스트 팝업 제공 후 -> EmptyMeetScreen
              CommonUtils.showToastMsg('로그인 정보가 확인되지 않습니다.');
              return EmptyMeetScreen();
            }
          case MeetPageLoginStatus.login:
            {
              // 저장된 약속장소 데이터가 있는지 DB Select Run!
              return Container(
                child: Center(
                  child: Text(
                    '로그인이 되어있는 사용자 입니다!!',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }
        }
      }),
    );
  }
}
