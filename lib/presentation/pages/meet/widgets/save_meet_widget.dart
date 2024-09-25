import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/common/fab_item.dart';
import '../../../main/common/component/dialog/common_dialog.dart';
import '../../../main/common/component/widget/common_fab_widget.dart';
import '../dialogs/start_address_input_dialog.dart';
import '../notifiers/meet_firestore/meet_firestore_notifier.dart';
import '../notifiers/meet_firestore/meet_firestore_state.dart';
import 'save_meet_list_item_widget.dart';

final Logger _logger = CustomLogger.logger;

// ============================================================
// Save Meet Widget
// ============================================================
/// # 로그인 사용자 > 저장된 출발지 정보를 보여주는 화면
class SaveMeetWidget extends StatelessWidget {
  const SaveMeetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: LocationListView());
  }
}

// ============================================================
// Meet List View
// ============================================================
class LocationListView extends ConsumerStatefulWidget {
  const LocationListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationListView();
}

class _LocationListView extends ConsumerState<LocationListView> {
  @override
  Widget build(BuildContext context) {
    final dbState = ref.watch(meetFireStoreNotifierProvider);
    final deleteStatus = ref.watch(meetFireStoreNotifierProvider
        .select((p) => p.deleteStatus)); // Item Delete Status
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: dbState.getLocationInfo.length,
          itemBuilder: (context, index) {
            return SaveMeetListItemWidget(
              locationModel: dbState.getLocationInfo[index],
              isDelete:
                  deleteStatus == MeetItemDeleteStatus.delete ? true : false,
              onBtnItemDelete: () {
                CommonDialog.confirmDialog(
                    context: context,
                    title: '삭제하기',
                    content: '삭제하시겠습니까?',
                    btn1Text: '아니오',
                    btn2Text: '네',
                    onBtn1Pressed: (context) async {
                      context.pop();
                    },
                    onBtn2Pressed: (context) async {
                      ref
                          .read(meetFireStoreNotifierProvider.notifier)
                          .deleteSelectLocation(
                              dbState.getLocationInfo[index].location_id);
                      CommonUtils.showToastMsg('삭제되었습니다.');
                      context.pop();
                    });
              },
            );
          },
        ),
        CommonFabWidget(
          mainIcon: Icons.edit_note_rounded,
          padding: 20.0,
          fabItems: [
            FabItem(
                icon: Icons.add,
                label: '약속 추가',
                onTap: () => {
                      ref.read(meetFireStoreNotifierProvider.notifier).defaultDeleteState(),
                      showDialog(
                        context: context,
                        builder: (context) => StartAddressInputDialog(),
                      ).then((value) {
                        if (value != null) {
                          var result = value as Map<String, dynamic>;

                          final isUpdate = result['update'];

                          _logger.i('로그인 사용자 -> Map 종료 값 확인 -> ${isUpdate}');
                          if (isUpdate) {
                            ref
                                .read(meetFireStoreNotifierProvider.notifier)
                                .getLocationDB();
                          }
                        }
                      })
                    }),
            FabItem(
                icon: Icons.delete_forever,
                label: '삭제',
                onTap: () => {
                      if (deleteStatus == MeetItemDeleteStatus.nonDelete)
                        {CommonUtils.showToastMsg('삭제할 약속장소를 선택해주세요.')},
                      ref
                          .read(meetFireStoreNotifierProvider.notifier)
                          .changeDeleteState(),
                    }),
            FabItem(
                icon: Icons.delete_forever,
                label: '모두 삭제',
                onTap: () => {
                      ref.read(meetFireStoreNotifierProvider.notifier).defaultDeleteState(),
                      CommonDialog.confirmDialog(
                          context: context,
                          title: '삭제하기',
                          content: '삭제하시겠습니까?',
                          btn1Text: '아니오',
                          btn2Text: '네',
                          onBtn1Pressed: (context) async {
                            context.pop();
                          },
                          onBtn2Pressed: (context) async {
                            _logger.i(
                                'FireStore DB Locations Selete Positoin Item Delete');
                            ref
                                .read(meetFireStoreNotifierProvider.notifier)
                                .deleteAllLocationDB();
                            CommonUtils.showToastMsg('약속장소 정보를 모두 삭제합니다.');
                            context.pop();
                          })
                    }),
          ],
        )
      ],
    );
  }
}
