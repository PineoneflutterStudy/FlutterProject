import 'package:flutter_project_team1/core/utils/error/error_response.dart';
import 'package:flutter_project_team1/data/data_source/remote/kkultrip.api.dart';
import 'package:flutter_project_team1/data/repository_impl/display/display_repository_impl.dart';
import 'package:flutter_project_team1/domain/model/common/result.dart';
import 'package:flutter_project_team1/domain/model/display/category/category.model.dart';
import 'package:flutter_project_team1/domain/repository/display.repository.dart';
import 'package:flutter_project_team1/domain/usecase/display/category/get_category.usecase.dart';
import 'package:flutter_project_team1/domain/usecase/display/display.usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDisplayApi extends Mock implements KkulTripApi{}
class MockDisplayRepository extends Mock implements DisplayRepository{}
class MockGetCategoryUsecase extends Mock implements GetCategorysUsecase{}
void main() {
  late DisplayRepository displayRepository;
  late DisplayUsecase displayUsecase;

  setUpAll((){
    displayRepository = DisplayRepositoryImpl(MockDisplayApi());
    displayUsecase = DisplayUsecase(displayRepository);
  });

  test('의존성 주입 성공', ()=> expect(displayUsecase, isNotNull));

  test('카테고리 리스트 불러오기 성공', () async{
    final result = Result.Success([Category(ctgrId: -1, ctgrName: '카테고리 테스트')]);
    final usecase = MockGetCategoryUsecase();

    when(()=>usecase.menuType).thenThrow('plan');
    when(()=>usecase.call(displayRepository)).thenAnswer((_) async => result);

    final actual = await displayUsecase.execute(usecase: usecase);
    expect(actual, result);
  });

  test('카테고리 리스트 불러오기 실패', () async{
    final result = Result<List<Category>>.failure(ErrorResponse(status: 'error'));
    final usecase = MockGetCategoryUsecase();

    when(()=>usecase.menuType).thenThrow('plan');
    when(()=>usecase.call(displayRepository)).thenAnswer((_) async => result);

    final actual = await displayUsecase.execute(usecase: usecase);
    expect(actual, result);
  });
}