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

  HomeModel.fromJson(dynamic json) // state는 추후 State로 변경
      : titleList = crawling(json, Groups.title),
        imageList = crawling(json, Groups.image),
        locationList = crawling(json, Groups.location);

  static List<String> crawling(dynamic json, Groups groups) {
    CustomLogger.logger.i('[json]: $json');
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
