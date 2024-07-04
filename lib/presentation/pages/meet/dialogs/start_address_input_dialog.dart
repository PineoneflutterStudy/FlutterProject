import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../data/repository_impl/meet/start_address_repository_impl.dart';
import '../screens/address_input_add_item_screen.dart';
import '../screens/address_input_basic_item_screen.dart';
import '../screens/meet_place_set_screen.dart';
import '../viewmodel/address_input_view_model.dart';
import '../widgets/common/select_move_step_widget.dart';
import '../widgets/common/text_content_area_widget.dart';
import '../widgets/common/title_text_area_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:remedi_kopo/remedi_kopo.dart';

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
        create: (_) => AddressInputViewModel(StartAddressRepositoryImpl()),
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
                  print('값확인 -> ${viewModel.addressList.length}');
                  if (viewModel.addressList.length == 0) viewModel.basicAddress();
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(child: makeStartAddressList(context, viewModel)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: IconButton(
                          onPressed: () {
                            if (viewModel.addressList.length >= 4) {
                              showToast('최대치를 초과하였습니다!');
                            } else {
                              viewModel.addAddressSize();
                              viewModel.addAddress(viewModel.addressSize, '');
                            }
                          },
                          icon: Icon(
                            Icons.add_circle_sharp,
                            color: Colors.amberAccent,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              // 선택한 대중교통이 뭔지 간단한 텍스트로 보여주기
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: SelectMoveStepWidget(
                    backText: '취소',
                    nextText: '중간지점 찾기!',
                    onBackPress: () {
                      print('출발지 입력 Dialog 종료');
                      Navigator.of(context).pop();
                    },
                    onNextPress: () {
                      print('중간지점 찾기 Dialog 이동');
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MeetPlaceSetScreen(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
    );
  }

  void addressApi(BuildContext context) async {
    KopoModel model = await Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => RemediKopo(),
      ),
    );
    showToast('${model.address}');
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
                        print('주소입력 화면으로 이동합니다. 몇번쨰 index?? -> $index');
                        // 주소 입력 화면 이동
                        HapticFeedback.mediumImpact();
                        addressApi(context);
                      },
                      child: index < 2?
                      AddressInputBasicItemScreen(indexNum: index + 1,address: viewModel.addressList[index].address,)
                          : AddressInputAddItemScreen(indexNum: index + 1,address: viewModel.addressList[index].address,)
                  ),
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
