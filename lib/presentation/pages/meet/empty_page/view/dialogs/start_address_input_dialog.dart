import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../../../core/utils/logger.dart';
import '../../../../../../data/data_source/local_storage/meet/local_prefs_storage.dart';
import '../../../../../../domain/model/display/meet/address_model.dart';
import '../../../../../../main.dart';
import '../../../common/select_move_step_widget.dart';
import '../../../common/text_content_area_widget.dart';
import '../../../common/title_text_area_widget.dart';
import '../../../map_page/screens/meet_place_map_screen.dart';
import '../../notifier/address_info_notifier.dart';
import '../../notifier/address_info_state.dart';
import '../widgets/address_input_add_item_widget.dart';
import '../widgets/address_input_basic_item_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:kpostal/kpostal.dart';

/**
 * 출발지 입력 Dialog
 */
const double dialogBgRadius = 30;
const double textSize_title = 30;
const double textSize_content = 25;

final Logger _logger = CustomLogger.logger;

List<Widget> addressFields = [];

// ============================================================
// Dialog page
// ============================================================
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addressInfoStateProvider.notifier).fetchAddressInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
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
          const _ContentView(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
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

  late LocalPrefsStorageImpl localStorage;
  @override
  void initState() {
    super.initState();
    localStorage = LocalPrefsStorageImpl(sharedPreferences: sharedPref);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Consumer(
        builder: (context, ref, child) {
          final state = ref.watch(addressInfoStateProvider);
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
                    ref.read(addressInfoStateProvider.notifier).addAddressInput(
                        AddressModel(index: state.addressList.length, address: '', latitude: 0.0, longitude: 0.0),
                    );
                    /*viewModel.isMaxAddAddress();
                    if (viewModel.toastMessage.isNotEmpty)
                      showToast('${viewModel.toastMessage}');*/
                  },
                  icon: Icon(
                    Icons.add_circle_sharp,
                    color: Colors.amberAccent,
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
                      if (state.addressList.length > 1) {
                        // 주소가 모두 입력
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MeetPlaceMapScreen(
                              addressList: state.addressList,
                            ),
                            fullscreenDialog: true,
                          ),
                        );
                      } else {
                        // 저장된 List의 길이가 2보다 작으므로... 최소 2개의 출발지는 입력 해야합니다...
                        showToast('비어있는 출발지가 있습니다!');
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

  // 출발지 입력 ListView
  ListView makeStartAddressList(BuildContext context, AddressInfoState state) {
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
                        addressApi(context, index);
                      },
                      child: index < 2
                          ? AddressInputBasicItemWidget(
                        indexNum: index + 1,
                        address: state.addressList[index].address,
                        onDeleteBtnPress: () {
                          // 입력 주소 제거
                          /*state.deleteAddress(index);*/
                          //localStorage.deleteAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));
                        },
                      )
                          : AddressInputAddItemWidget(
                        indexNum: index + 1,
                        address: state.addressList[index].address,
                        onDeleteBtnPress: () {
                          // 입력 주소 제거
                          /*state.deleteAddress(index);*/
                          /*localStorage.deleteAddress(AddressModel(index: index, address: '', latitude: 0.0, longitude: 0.0));*/
                        },
                        onRemoveBtnPress: () {
                          // 입력할 수 있는 항목 제거
                          /*state.removeAddress(index);*/
                          /*localStorage.removeAddress(index);*/
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
  void addressApi(BuildContext context, int listIndex) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (_) =>
              KpostalView(
                callback: (Kpostal result) {
                  /*localStorage.updateAddress(AddressModel(
                      index: listIndex,
                      address: result.address,
                      latitude: result.latitude!,
                      longitude: result.longitude!));*/
                },
              )),
    );
  }

  /**
   * 토스트 메시지 제공
   */
  void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.white,
      fontSize: 15,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
