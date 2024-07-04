import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../../presentation/main/common/response_wrapper/response_wrapper.dart';
import '../../dto/display/category/category.dto.dart';

part 'kkultrip.api.g.dart';

@RestApi()
abstract class KkulTripApi {
  factory KkulTripApi(Dio dio, {String baseUrl}) = _KkulTripApi;

  @GET('/api/categorys/{menu_type}')
  Future<ResponseWrapper<List<CategoryDto>>> getCategoryList(@Path('menu_type') String menuType);
}

