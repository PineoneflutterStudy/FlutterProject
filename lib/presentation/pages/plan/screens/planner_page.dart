import 'package:flutter/material.dart';

import '../../../../data/data_source/mock/category/ctgr_mock_api.dart';
import '../../../../data/repository_impl/display/display_repository_impl.dart';
import '../../../../domain/model/display/category/category.model.dart';

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
      final data = await DisplayRepositoryImpl(CtgrMockApi()).getCategoryList(menuType: 'plan');
      if(data.status == '0'){
        setState(() {
          categoryList = data.data ?? [];
          isLoading = false; // 데이터 로딩 완료
        });
      }else{
        setState(() {
          isLoading = false; // 데이터 로딩 완료
          errorMessage = data.message;
        });
      }
    } catch (e) {
      // todo 에러 처리 로직 추가
      setState(() {
        isLoading = false; // 에러 발생 시 로딩 상태 해제
      });
      print('Failed to load data: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isLoading)
          CircularProgressIndicator(), // 로딩 중일 때 보여줄 위젯
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
