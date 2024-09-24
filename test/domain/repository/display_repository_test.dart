import 'package:flutter_project_team1/core/utils/constant.dart';
import 'package:flutter_project_team1/data/data_source/api/category/ctgr_mock_api.dart';
import 'package:flutter_project_team1/data/data_source/remote/mock.api.dart';
import 'package:flutter_project_team1/data/mapper/common.mapper.dart';
import 'package:flutter_project_team1/data/mapper/plan/category.mapper.dart';
import 'package:flutter_project_team1/data/repository_impl/common/common_repository_impl.dart';
import 'package:flutter_project_team1/domain/model/display/common/category.model.dart';
import 'package:flutter_project_team1/domain/repository/display.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements MockApi{}

void main(){
  late DisplayRepository displayRepository;
  late MockApi mockApi;

  setUpAll((){
    mockApi = MockDisplayApi();
    displayRepository = CommonRepositoryImpl(mockApi);
  });

  test('의존성 주입 및 객체 생성 완료', ()=> expect(displayRepository, isNotNull));

  group('메뉴 리스트 불러오기',(){
    //api 호출 성공
    test('api 호출 완료',() async{
      try{
        await displayRepository.getCategoryList(menuType: MenuType.plan);
      }catch(_){}
      verify(()=>mockApi.getCategoryList(any())).called(1); //한번만 호출이 되었는지 확인
    });

    //api 호출 실패
    test('api 호출 실패',() async{
      final exception = Exception('error');
      when(()=>mockApi.getCategoryList(any())).thenThrow(exception);
      expect(()=>displayRepository.getCategoryList(menuType: MenuType.plan), throwsA(exception));
    });

    test('api 호출 성공적으로 불러옴', () async{
      final menuType = MenuType.plan;
      final mockingData = await CtgrMockApi().getCategoryList(menuType);

      when(()=>mockApi.getCategoryList(any())).thenAnswer((_) async => mockingData);

      final actual = await displayRepository.getCategoryList(menuType: menuType);

      final expected = mockingData.toModel<List<Category>>(
          mockingData.data?.map((dto) => dto.toModel()).toList() ?? []);
      expect(actual, expected);
    });
  });
}