import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/exception/common_exception.dart';
import '../../../../core/utils/logger.dart';
import '../../../../domain/model/common/result.dart';
import '../../../../domain/model/display/category/category.model.dart';
import '../../../../domain/usecase/display/category/get_category.usecase.dart';
import '../../../../domain/usecase/display/display.usecase.dart';
import '../../../../service_locator.dart';

class PlannerPage extends StatefulWidget {
  const PlannerPage({super.key});

  @override
  State<PlannerPage> createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  List<Category> categoryList = []; // 데이터를 저장할 리스트
  bool isLoading = true; // 로딩 상태를 나타낼 변수
  String errorMessage = ''; // 에러 메시지를 저장할 변수
  @override
  void initState() {
    super.initState();
    getCategoryList();
  }

  Future<void> getCategoryList() async {
    try {
      final result = await locator<DisplayUsecase>().execute(usecase: GetCategorysUsecase(MenuType.plan));
      CustomLogger.logger.d(result);
      if(result is Success){
        setState(() {
          categoryList = result.data ?? [];
          isLoading = false; // 데이터 로딩 완료
        });
      }else{
        isLoading = false;
        errorMessage = result.message;
      }
    } catch (error) {
      final errorData = CommonException.setError(error);
      CustomLogger.logger.e(errorData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isLoading) CircularProgressIndicator(), // 로딩 중일 때 보여줄 위젯
        if (!isLoading && errorMessage.isNotEmpty)
          Text(errorMessage), // 에러 발생 시 보여줄 위젯
        if (!isLoading && categoryList.isEmpty)
          Text('No data available'), // 데이터가 없을 때 보여줄 위젯
        if (!isLoading && categoryList.isNotEmpty)
          Expanded(
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(categoryList[index].ctgrName),
                );
              },
            ),
          ),
      ],
    );
  }
}
