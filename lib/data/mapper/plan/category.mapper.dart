import '../../../domain/model/display/common/category.model.dart';
import '../../dto/display/category/category.dto.dart';

extension CategoryX on CategoryDto{
  Category toModel() {
    return Category(
      ctgrId: ctgrId ?? '',
      ctgrName: ctgrName ?? '',
    );
  }
}