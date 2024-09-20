import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../core/utils/common_utils.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/exception/common_exception.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/common/result.dart';
import '../../../../domain/model/display/category/category.model.dart';
import '../../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../../domain/usecase/display/display.usecase.dart';
import '../../../../service_locator.dart';
import '../festival_info/screen/festival_contents.dart';
import '../utils/home_util.dart';
import 'home_category_contents.dart';
import 'popular_contents.dart';

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
  String searchValue = '';

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
      appBar: const HomeAppbar(title: '댕꿀트립'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // 검색
            HomeSearchBar(),
            // 인기 지역 크롤링 이였던것..
            PopularContents(),
            // 목록 Mock
            CategoryContents(categoryList: categoryList),
            // 전국 축제
            FestivalContents()
          ],
        ),
      ),
    );
  }

  /**
   * 검색 바
   */
  Padding HomeSearchBar() {
    var inputStyle = WidgetStateProperty.all(TextStyle(
        //======= UnderLine 제거 =======
        decoration: TextDecoration.none,
        decorationThickness: 0,
        fontSize: 30,
        fontWeight: FontWeight.w500,
        height: 0.8,
        color: AppColors.contentPrimary));

    var hintStyle = WidgetStateProperty.all(TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        height: 0.8,
        color: AppColors.contentSecondary));

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: SearchBar(
        keyboardType: TextInputType.text,
        textStyle: inputStyle,
        hintText: '지역이나 숙소를 검색하세요.',
        hintStyle: hintStyle,
        trailing: [
            IconButton(
              onPressed: () {
                HomeUtil.searchRecommend(context, searchValue);
              },
              icon: const Icon(Icons.search_rounded, color: AppColors.primary,),
            ),
          ],
        shadowColor: WidgetStateProperty.all(AppColors.primary),
        onChanged: (value) {
          searchValue = value;
        },
      ),
    );
  }

  /**
   * 구글 맵 검색 기능으로 이동
   */
  Future<void> _searchGoogleWeb(String value) async {
    var encodingValue = Uri.encodeFull(value);
    String url = 'https://www.google.com/maps/search/?api=1&query=$encodingValue';

    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomLogger.logger.e('Could not launch $uri');
      CommonUtils.showToastMsg('URL 호출 실패\n다시 시도해주세요.');
    }
  }
}

// # 앱 바
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
