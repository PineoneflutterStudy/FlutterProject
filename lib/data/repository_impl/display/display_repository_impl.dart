import '../../../core/utils/constant.dart';
import '../../../domain/model/display/category/category.model.dart';
import '../../../domain/repository/display.repository.dart';
import '../../data_source/remote/mock.api.dart';
import '../../data_source/response_wrapper/response_wrapper.dart';
import '../../mapper/common.mapper.dart';
import '../../mapper/display.mapper.dart';

/**
 * 공통으로 사용할 만한 것들
 */
class DisplayRepositoryImpl implements DisplayRepository {
  final MockApi _mockApi;
  DisplayRepositoryImpl(this._mockApi);

  @override
  Future<ResponseWrapper<List<Category>>> getCategoryList({
    required MenuType menuType,
  }) async {
    final response = await _mockApi.getCategoryList(menuType);
    return response.toModel<List<Category>>(
      response.data?.map((dto) => dto.toModel()).toList() ?? [],
    );
  }
}
