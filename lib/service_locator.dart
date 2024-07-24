import 'package:flutter_config/flutter_config.dart';
import 'package:get_it/get_it.dart';

import 'core/utils/rest_client/rest_client.dart';
import 'data/data_source/api/category/ctgr_mock_api.dart';
import 'data/data_source/remote/kakao.api.dart';
import 'data/data_source/remote/mock.api.dart';
import 'data/repository_impl/display/display_repository_impl.dart';
import 'data/repository_impl/planner/planner_repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/repository/planner.repository.dart';
import 'domain/usecase/display/display.usecase.dart';
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
  final restClient = RestClient();
  final dio = restClient.getDio;
  dio.options.headers['Authorization'] = 'KakaoAK ${FlutterConfig.get('KAKAO_REST_API_KEY')}' ;
  dio.options.baseUrl = 'https://dapi.kakao.com/v2/local/search/';
  locator.registerSingleton<KakaoApi>(KakaoApi(dio));
}

void _domain() {
  //repository
  locator.registerSingleton<DisplayRepository>(
      DisplayRepositoryImpl(locator<MockApi>()));
  locator.registerSingleton<PlannerRepository>(
      PlannerRepositoryImpl(locator<KakaoApi>()));
  //usecase
  locator.registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>()));
  locator.registerSingleton<PlannerUsecase>(
      PlannerUsecase(locator<PlannerRepository>()));
}
