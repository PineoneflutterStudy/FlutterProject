import 'dart:convert';
import '../../../../core/utils/constant.dart';
import '../../../dto/display/category/category.dto.dart';
import '../../remote/mock.api.dart';
import '../../response_wrapper/response_wrapper.dart';
import 'ctgr_mock_data.dart';

class CtgrMockApi implements MockApi{
  @override
  Future<ResponseWrapper<List<CategoryDto>>> getCategoryList(MenuType menuType) {
    return Future(() => ResponseWrapper(
      status: 'success', //성공 0, 실패 1
      code: '0000',
      message: '',
      data: _ctgrParser(_ctgrType(menuType))
    ));
  }

  List<CategoryDto> _ctgrParser(String source){
    List<CategoryDto> cgList = [];
    final List json = jsonDecode(source);
    cgList = json.map((e) => CategoryDto.fromJson(e)).toList();
    return cgList;
  }

  String _ctgrType(MenuType menuType) {
    switch(menuType) {
      case MenuType.home:
        return CtgrMockData.homeCategory;
      case MenuType.like:
        return CtgrMockData.likeCategory;
      default:
        return CtgrMockData.planCategory;
    }
  }
}
