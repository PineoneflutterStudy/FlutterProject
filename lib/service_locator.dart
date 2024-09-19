import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';

import 'core/utils/rest_client/rest_client.dart';
import 'data/data_source/api/category/ctgr_mock_api.dart';
import 'data/data_source/api/region/region.api.dart';
import 'data/data_source/remote/kakao.api.dart';
import 'data/data_source/remote/mock.api.dart';
import 'data/repository_impl/common/common_repository_impl.dart';
import 'data/repository_impl/like/region_repository_impl.dart';
import 'data/repository_impl/plan/planner_repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/repository/like/region_repository.dart';
import 'domain/repository/planner.repository.dart';
import 'domain/usecase/display/display.usecase.dart';
import 'domain/usecase/like/region/region.usecase.dart';
import 'domain/usecase/planner/planner.usecase.dart';

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
}

void _data() {
  //mock api
  locator.registerSingleton<MockApi>(CtgrMockApi());

  //kakao api
  final kakaoClient = RestClient();
  final kakaoDio = kakaoClient.createDio();
  kakaoDio.options.headers['Authorization'] = 'KakaoAK ${FlutterConfig.get('KAKAO_REST_API_KEY')}' ;
  kakaoDio.options.baseUrl = 'https://dapi.kakao.com/v2/local/search/';
  locator.registerSingleton<KakaoApi>(KakaoApi(kakaoDio));

  //region api
  final regionClient = RestClient();
  final regionDio = regionClient.createDio();

  regionDio.options.baseUrl = 'https://sgisapi.kostat.go.kr';
  locator.registerLazySingleton<RegionApi>(() => RegionApi(regionDio));
}

void _domain() {
  //repository
  locator.registerSingleton<DisplayRepository>(
      CommonRepositoryImpl(locator<MockApi>()));
  locator.registerSingleton<PlannerRepository>(
      PlannerRepositoryImpl(locator<KakaoApi>()));
  locator.registerLazySingleton<RegionRepository>(
          () => RegionRepositoryImpl(locator<RegionApi>()));
  //usecase
  locator.registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>()));
  locator.registerSingleton<PlannerUsecase>(
      PlannerUsecase(locator<PlannerRepository>()));
  locator.registerLazySingleton<RegionUsecase>(
          () => RegionUsecase(locator<RegionRepository>())
  );
}

