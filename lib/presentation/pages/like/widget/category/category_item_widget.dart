import 'package:flutter/cupertino.dart';

import '../../../../../core/theme/constant/app_colors.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../domain/model/display/category/category.model.dart';

/**
 * 찜목록 상단 카테고리 아이템
 */
class CategoryItemWidget extends StatelessWidget {

  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItemWidget({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.0), // 텍스트 주변 내부 여백
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondary : AppColors.onPrimary,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: AppColors.surfaceVariant, width: 0.5), // Thin black border),
        ),
        child: Text(category.ctgrName, style: isSelected ? CustomTheme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold) : CustomTheme.textTheme.titleLarge,),
      ),
    );
  }
}
