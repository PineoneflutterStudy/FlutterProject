import 'package:flutter/material.dart';

import '../../../core/utils/constant.dart';
import '../../../core/utils/exception/common_exception.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/model/common/result.dart';
import '../../../domain/model/display/category/category.model.dart';
import '../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../domain/usecase/display/display.usecase.dart';
import '../../../service_locator.dart';
import 'popualr_widget.dart';

// 홈 화면
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categoryList = []; // 데이터를 저장할 리스트
  bool isLoading = true; // 로딩 상태를 나타낼 변수
  String errorMessage = ''; // 에러 메시지를 저장할 변수

  @override
  void initState() {
    super.initState();
    getCategoryList();
  }

  Future<void> getCategoryList() async {
    try {
      final result = await locator<DisplayUsecase>()
          .execute(usecase: GetCategorysUsecase(MenuType.home));
      CustomLogger.logger.d(result);
      if (result is Success) {
        setState(() {
          categoryList = result.data ?? [];
          isLoading = false; // 데이터 로딩 완료
        });
      } else {
        isLoading = false;
        errorMessage = result.message;
      }
    } catch (error) {
      final errorData = CommonException.setError(error);
      CustomLogger.logger.e(errorData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(title: '개꿀트립'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchBar(
                      hintText: '지역이나 숙소를 검색하세요.',
                      leading: Icon(Icons.search_rounded),
                      shadowColor: WidgetStateProperty.all(Colors.amber),
                      onChanged: (value) {}, //TODO:: 검색 기능 추가
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  PopularWidget(),
                ],
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30),
              clipBehavior: Clip.hardEdge,
              shrinkWrap: true,
              itemCount: categoryList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                childAspectRatio: .8 / .4, //item 의 가로 1, 세로 1 의 비율
                mainAxisSpacing: 10, //수평 Padding
                crossAxisSpacing: 10, //수직 Padding
              ),
              itemBuilder: (BuildContext context, int index) {
                // return Text(index.toString());
                return Container(
                  alignment: Alignment.center,
                  child: Text(
                    '${categoryList[index].ctgrName}',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  /*Container(
                    height: MediaQuery.of(context).size.height - 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Text(
                      '${categoryList[index].ctgrName}',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),*/
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(221, 98, 38, 100),
                          Color.fromRGBO(194, 182, 142, 100),
                          Color.fromRGBO(65, 209, 207, 100)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double appbar_height = 50;

  const HomeAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5, // 하단 음영
          centerTitle: true,
          title: Text(
            title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )),
    );
  }

  // preferredSize 설정 (필수)
  @override
  Size get preferredSize => Size.fromHeight(appbar_height);
}
