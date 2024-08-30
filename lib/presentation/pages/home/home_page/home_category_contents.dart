import 'package:flutter/cupertino.dart';

import '../../../../core/theme/constant/app_colors.dart';
import '../../../../domain/model/display/category/category.model.dart';

// # 카테고리
class CategoryContents extends StatelessWidget {
  const CategoryContents({
    super.key,
    required this.categoryList,
  });

  final List<Category> categoryList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text('카테고리',
              maxLines: 1,
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            alignment: Alignment.center,
            height: 150,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              // 스크롤 비활성화
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                mainAxisExtent: 50,
              ),
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return categoryItem(categoryList[index]);
              },
            ),
          ),
        )
      ],
    );
  }

  Container categoryItem(Category i) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '${i.ctgrName}',
        textAlign: TextAlign.center,
        softWrap: true,
        style: const TextStyle(
            color: AppColors.black, fontSize: 30, fontWeight: FontWeight.w800),
      ),
      decoration: BoxDecoration(
          color: AppColors.inversePrimary,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
