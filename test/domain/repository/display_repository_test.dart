import 'package:flutter_project_team1/data/data_source/mock/category/ctgr_mock_api.dart';
import 'package:flutter_project_team1/data/data_source/remote/kkultrip.api.dart';
import 'package:flutter_project_team1/data/mapper/common.mapper.dart';
import 'package:flutter_project_team1/data/mapper/display.mapper.dart';
import 'package:flutter_project_team1/data/repository_impl/display/display_repository_impl.dart';
import 'package:flutter_project_team1/domain/model/display/category/category.model.dart';
import 'package:flutter_project_team1/domain/repository/display.repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements KkulTripApi{}

void main(){
  late DisplayRepository displayRepository;
  late KkulTripApi kkulTripApi;

  setUpAll((){
    kkulTripApi = MockDisplayApi();
    displayRepository = DisplayRepositoryImpl(kkulTripApi);
  });

  test('의존성 주입 및 객체 생성 완료', ()=> expect(displayRepository, isNotNull));

  group('메뉴 리스트 불러오기',(){
    //api 호출 성공
    test('api 호출 완료',() async{
      try{
        await displayRepository.getCategoryList(menuType: 'plan');
      }catch(_){}
      verify(()=>kkulTripApi.getCategoryList(any())).called(1); //한번만 호출이 되었는지 확인
    });

    //api 호출 실패
    test('api 호출 실패',() async{
      final exception = Exception('error');
      when(()=>kkulTripApi.getCategoryList(any())).thenThrow(exception);
      expect(()=>displayRepository.getCategoryList(menuType: 'plan'), throwsA(exception));
    });

    test('api 호출 성공적으로 불러옴', () async{
      final menuType = 'plan';
      final mockingData = await CtgrMockApi().getCategoryList(menuType);

      when(()=>kkulTripApi.getCategoryList(any())).thenAnswer((_) async => mockingData);

      final actual = await displayRepository.getCategoryList(menuType: menuType);

      final expected = mockingData.toModel<List<Category>>(
          mockingData.data?.map((dto) => dto.toModel()).toList() ?? []);
      expect(actual, expected);
    });
  });
}