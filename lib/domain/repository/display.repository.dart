import '../../core/utils/constant.dart';
import '../../presentation/main/common/response_wrapper/response_wrapper.dart';
import '../model/display/category/category.model.dart';
import 'repository.dart';

abstract class DisplayRepository extends Repository {
  Future<ResponseWrapper<List<Category>>> getCategoryList({
    required MenuType menuType,
  });
}
