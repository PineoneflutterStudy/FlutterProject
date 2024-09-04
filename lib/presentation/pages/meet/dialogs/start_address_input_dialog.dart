import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/display/meet/address_model.dart';
import '../notifiers/address_local/address_shprf_notifier.dart';
import '../notifiers/address_local/address_shprf_state.dart';
import '../notifiers/meet_firestore/meet_firestore_notifier.dart';
import '../widgets/common/select_move_step_widget.dart';
import '../widgets/common/text_content_area_widget.dart';
import '../screens/meet_place_map_screen.dart';
import '../widgets/common/title_text_area_widget.dart';
import '../widgets/address_input_add_item_widget.dart';
import '../widgets/address_input_basic_item_widget.dart';

import 'package:kpostal/kpostal.dart';

/**
 * 출발지 입력 Dialog
 */
const double dialogBgRadius = 30;
const double textSize_title = 30;
const double textSize_content = 25;

final Logger _logger = CustomLogger.logger;

// ============================================================
// Dialog page
// ============================================================
/// # 출발지 입력 Dialog
class StartAddressInputDialog extends StatelessWidget {
  const StartAddressInputDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: AddressDialogView());
  }
}

// ============================================================
// Dialog View
// ============================================================
class AddressDialogView extends ConsumerStatefulWidget {
  const AddressDialogView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDialogView();
}

class _AddressDialogView extends ConsumerState<AddressDialogView> {
  @override
  void initState() {
    super.initState();
    _logger.i('[ _AddressDialogView ] initState!!');
    // 진입 시 Default값 Setting
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addressShprfNotifierProvider.notifier).getDefaultAddress();
    });
  }

  @override
  Widget build(BuildContext context) {
    // Default 2 Line 생성 상태만 확인
    final shprfStatus = ref.watch(addressShprfNotifierProvider.select((p) => p.status));

    switch (shprfStatus) {
      case AddressShprfStatus.initial:
      case AddressShprfStatus.loading:
      case AddressShprfStatus.failure:
        {
          // failure는 아직 상태가 존재하지 않아 우선 ProgressIndicator 동작
          return const Center(child: CircularProgressIndicator(),);
        }
      case AddressShprfStatus.success:
        {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(dialogBgRadius),
                  ),
                ),
                TitleTextAreaWidget(content: '출발지 입력', contentSize: textSize_title),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextContentAreaWidget(
                    content: '먼저 출발지를 입력해주세요.',
                    contentSize: textSize_content,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // 주소 검색 Api 사용
                _ContentView(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        }
    }
  }
}

// ============================================================
// content
// ============================================================
class _ContentView extends ConsumerStatefulWidget {
  const _ContentView({super.key});

  @override
  ConsumerState<_ContentView> createState() => __ContentViewState();
}

class __ContentViewState extends ConsumerState<_ContentView> {
  @override
  void initState() {
    super.initState();
    _logger.i('[ __ContentViewState ] initState!!');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(addressShprfNotifierProvider);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(child: makeStartAddressList(context, state)),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    _logger.i('Is Max Address Input box? => ${state.isMaxInput}');
                    if (state.isMaxInput) {
                      ref.read(addressShprfNotifierProvider.notifier).addEmptyAddress(state.addressList.length);
                    } else {
                      CommonUtils.showToastMsg('최대 4명까지 입력 가능합니다!');
                    }
                  },
                  icon: Icon(
                    Icons.add_circle_sharp,
                    color: AppColors.primary,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: SelectMoveStepWidget(
                    backText: '취소',
                    nextText: '중간지점 찾기!',
                    onBackPress: () {
                      Navigator.of(context).pop();
                    },
                    onNextPress: () {
                      List<String> indices = state.addressList.map((address) => address.address).toList();
                      _logger.i('Confirm Current AddressList Info -> $indices}');
                      if (indices.contains('')) {
                        // 빈값이 존재한다면? => 넘어가기 X
                        CommonUtils.showToastMsg('비어있는 출발지가 있습니다!');
                      } else {
                        // 주소가 모두 입력
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MeetPlaceMapScreen(addresses: state.addressList),
                            fullscreenDialog: true,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  /**
   * 출발지 입력 리스트뷰
   */
  ListView makeStartAddressList(BuildContext context, AddressShprfState state) {
    return ListView.builder(
      itemCount: state.addressList.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    // 취소 버튼을 제외한 주소 입력 나머지 영역 탭 시
                      onTap: () {
                        // 주소 입력 화면 이동
                        addressApi(context, index, ref);
                      },
                      child: index < 2
                          ? AddressInputBasicItemWidget(
                        indexNum: index + 1,
                        address: state.addressList[index].address,
                        onDeleteBtnPress: () {
                          _logger.i('Default Line Delete Address Info');
                          // Default 2 Line 입력 주소 제거
                          ref.read(addressShprfNotifierProvider.notifier).deleteAddress(index);
                        },
                      )
                          : AddressInputAddItemWidget(
                        indexNum: index + 1,
                        address: state.addressList[index].address,
                        onDeleteBtnPress: () {
                          _logger.i('Add Line Delete Address Info');
                          // 추가 Line 입력 주소 제거( - )
                          ref.read(addressShprfNotifierProvider.notifier).deleteAddress(index);

                        },
                        onRemoveBtnPress: () {
                          _logger.i('Add Line Delete..!');
                          // Input List 제거 ( x )
                          ref.read(addressShprfNotifierProvider.notifier).deleteAddressInput(index);
                        },
                      )),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        );
      },
      shrinkWrap: true,
    );
  }

  /**
   * 주소검색 APi 실행 후 결과값 저장
   */
  void addressApi(BuildContext context, int listIndex, WidgetRef ref) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) => KpostalView(
            callback: (Kpostal result) {
              ref.read(addressShprfNotifierProvider.notifier).addAddressInput(
                AddressModel(
                    index: listIndex,
                    address: result.address,
                    latitude: result.latitude!,
                    longitude: result.longitude!),
              );
            },
          )),
    );
  }
}
