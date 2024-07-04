import '../../../domain/model/display/category/category.model.dart';
import '../../../domain/repository/display.repository.dart';
import '../../../presentation/main/common/response_wrapper/response_wrapper.dart';
import '../../data_source/remote/kkultrip.api.dart';
import '../../mapper/common.mapper.dart';
import '../../mapper/display.mapper.dart';

class DisplayRepositoryImpl implements DisplayRepository {
  final KkulTripApi _kkulTripApi;

  DisplayRepositoryImpl(this._kkulTripApi);

  @override
  Future<ResponseWrapper<List<Category>>> getCategoryList({
    required String menuType,
  }) async {
    final response = await _kkulTripApi.getCategoryList(menuType);
    return response.toModel<List<Category>>(
      response.data?.map((dto) => dto.toModel()).toList() ?? [],
    );
  }
}
