import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/utils/constant.dart';
import '../../dto/display/category/category.dto.dart';
import '../response_wrapper/response_wrapper.dart';

part 'mock.api.g.dart';

@RestApi()
abstract class MockApi {
  factory MockApi(Dio dio, {String baseUrl}) = _MockApi; // Dio객체를 받아 _MockApi 인스턴스 생성, 선택적 baseUrl 입력 받기 가능

  @GET('/api/categorys/{menu_type}')
  Future<ResponseWrapper<List<CategoryDto>>> getCategoryList(@Path('menu_type') MenuType menuType);
}
