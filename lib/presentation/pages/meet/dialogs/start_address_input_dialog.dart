import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../data/repository_impl/display/meet/start_address_repository_impl.dart';
import '../../../../domain/model/display/meet/start_address_model.dart';
import '../widgets/address_input_add_item_widget.dart';
import '../widgets/address_input_basic_item_widget.dart';
import '../screens/meet_place_map_screen.dart';
import '../viewmodel/address_input_view_model.dart';
import '../widgets/common/select_move_step_widget.dart';
import '../widgets/common/text_content_area_widget.dart';
import '../widgets/common/title_text_area_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:kpostal/kpostal.dart';

/**
 * 출발지 입력 Dialog
 */
const double dialogBgRadius = 30;
const double textSize_title = 30;
const double textSize_content = 25;

List<Widget> addressFields = [];

class StartAddressInputDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddressInputViewModel(StartAddressRepositoryImpl()),
      child: Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
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
            Consumer<AddressInputViewModel>(
              builder: (context, viewModel, Widget? child) {
                if (viewModel.addressList.length == 0) viewModel.basicAddress();
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: makeStartAddressList(context, viewModel)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () {
                          if (viewModel.addressList.length >= 4) {
                            showToast('최대 4명까지 입력 가능합니다!');
                          } else {
                            viewModel.addAddressSize();
                            viewModel.addAddress(viewModel.addressSize - 1, '', 0.0, 0.0);
                          }
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
                            bool isEmptyAddress = checkEmptyAddress(viewModel.addressList);
                            if (isEmptyAddress) {
                              // 주소가 모두 입력
                              Navigator.of(context).pop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MeetPlaceMapScreen(addressList: viewModel.addressList,),
                                  fullscreenDialog: true,
                                ),
                              );
                            } else {
                              // 하나라도 비어있는 주소가 존재한다...
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  // 출발지 입력 ListView
  ListView makeStartAddressList(BuildContext context, AddressInputViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.addressSize,
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
                        addressApi(context, index, viewModel);
                      },
                      child: index < 2
                          ? AddressInputBasicItemWidget(
                              indexNum: index + 1,
                              address: viewModel.addressList[index].address,
                              onDeleteBtnPress: () {
                                // 입력 주소 제거
                                viewModel.deleteAddress(index);
                              },
                            )
                          : AddressInputAddItemWidget(
                              indexNum: index + 1,
                              address: viewModel.addressList[index].address,
                              onDeleteBtnPress: () {
                                // 입력 주소 제거
                                viewModel.deleteAddress(index);
                              },
                              onRemoveBtnPress: () {
                                // 입력할 수 있는 항목 제거
                                viewModel.removeAddress(index);
                                viewModel.decAddressSize();
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
  void addressApi(BuildContext context, int listIndex, AddressInputViewModel viewModel) async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => KpostalView(
              callback: (Kpostal result) {
                viewModel.updateAddress(listIndex, result.address, result.latitude!, result.longitude!);
              },
            )),
    );
  }

  /**
   * 현재 주소들이 비어있는지 확인
   */
  bool checkEmptyAddress(List<StartAddressModel> addressList) {
    int emptyCount = 0;
    for (int i = 0; i < addressList.length; i++) {
      if(addressList[i].address.isEmpty) {
        emptyCount++;
      }
    }
    return emptyCount > 0? false : true;
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
