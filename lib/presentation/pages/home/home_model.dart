import '../../../core/utils/logger.dart';

enum Groups {
  title(GroupId: 3238),
  image(GroupId: 3239),
  location(GroupId: 3240);

  const Groups({required this.GroupId});

  final int GroupId;
}

class HomeModel {
  final List<String> titleList, imageList, locationList;

  // 크롤링
  HomeModel.fromJson(dynamic json) // state는 추후 State로 변경
      : titleList = crawling(json, Groups.title),
        imageList = crawling(json, Groups.image),
        locationList = crawling(json, Groups.location);

  // 하드코딩
  HomeModel.hardJson()
      : titleList = ["국내 인기 여행지"],
        imageList = [
          "https://image.goodchoice.kr/exhibition/cms/Region_jeju_03_20231103163922.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Seoul_03_20231103163936.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Busan_03_20231103163951.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Gangneung_03_20231103164004.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Incheon_03_20231103164014.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Gyeongju_03_20231103164027.png",
          "https://image.goodchoice.kr/exhibition/cms/Region__Haeundae_03_20231103164044.png",
          "https://image.goodchoice.kr/exhibition/cms/Region__Gapyeong_03_20231103164056.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Yeo_su_03_20231103164109.png",
          "https://image.goodchoice.kr/exhibition/cms/Region_Sokcho_02_20231117140152.png"
        ],
        locationList = [
          "제주도",
          "서울",
          "부산",
          "강릉",
          "인천",
          "경주",
          "해운대",
          "가평",
          "여수",
          "속초"
        ];

  static List<String> crawling(dynamic json, Groups groups) {
    List<String> result = [];
    var pageProps = json['pageProps'];
    var webScreen = pageProps['webScreen'];

    // modules
    List<dynamic> modules = webScreen['modules'];
    for (int i = 0; i < modules.length; i++) {
      List<dynamic> webComponents = [];
      if (i == 1) // [0]: 이벤트, [1]: 국내인기여행지, [2]: 해외인기여행지
        webComponents = modules[i]['webComponents'];
      // webComponents
      for (var webComponent in webComponents) {
        // [0]: 타이틀, [1]: 이미지, [2]: 지역이름
        List<dynamic> contentGroups = webComponent['contentGroups'];
        for (var contentGroup in contentGroups) {
          // contentGroupId
          dynamic contentGroupId = contentGroup['contentGroupId'];
          // contentGroups
          List<dynamic> contents = contentGroup['contents'];
          for (var content in contents) {
            var contentValue = content['contentValue'];
            if (contentGroupId == groups.GroupId) {
              result.add(contentValue);
            }
          }
        }
      }
    }
    CustomLogger.logger.i('[result]: $result');
    return result;
  }
}
