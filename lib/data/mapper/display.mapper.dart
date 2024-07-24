import 'package:flutter_project_team1/domain/model/display/category/category.model.dart';
import '../dto/display/category/category.dto.dart';

extension CategoryX on CategoryDto{
  Category toModel() {
    return Category(
      ctgrId: ctgrId ?? '',
      ctgrName: ctgrName ?? '',
    );
  }
}