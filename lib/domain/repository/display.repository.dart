import '../../core/utils/constant.dart';
import '../../data/data_source/response_wrapper/response_wrapper.dart';
import '../model/display/category/category.model.dart';
import 'repository.dart';

/**
 * 공통으로 사용할 만한 것들
 */
abstract class DisplayRepository extends Repository {
  Future<ResponseWrapper<List<Category>>> getCategoryList({
    required MenuType menuType,
  });
}
