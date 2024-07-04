import 'dart:convert';
import '../../../../presentation/main/common/response_wrapper/response_wrapper.dart';
import '../../../dto/display/category/category.dto.dart';
import '../../remote/kkultrip.api.dart';
import 'ctgr_mock_data.dart';

class CtgrMockApi implements KkulTripApi{
  @override
  Future<ResponseWrapper<List<CategoryDto>>> getCategoryList(String menuType) {
    return Future(() => ResponseWrapper(
      status: 'success', //성공 0, 실패 1
      code: '0000',
      message: '',
      data: _ctgrParser((menuType == 'home') ? CtgrMockData.homeCategory : CtgrMockData.planCategory)
    ));
  }

  List<CategoryDto> _ctgrParser(String source){
    List<CategoryDto> cgList = [];
    final List json = jsonDecode(source);
    cgList = json.map((e) => CategoryDto.fromJson(e)).toList();
    return cgList;
  }
}
