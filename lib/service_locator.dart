import 'package:get_it/get_it.dart';

import 'data/data_source/mock/category/ctgr_mock_api.dart';
import 'data/data_source/remote/kkultrip.api.dart';
import 'data/repository_impl/display/display_repository_impl.dart';
import 'domain/repository/display.repository.dart';
import 'domain/usecase/display/display.usecase.dart';

final locator = GetIt.instance;

void setLocator() {
  _data();
  _domain();
}

void _data() {
  locator.registerSingleton<KkulTripApi>(CtgrMockApi());
}

void _domain() {
  //repository
  locator.registerSingleton<DisplayRepository>(
      DisplayRepositoryImpl(locator<KkulTripApi>()));
  //usecase
  locator.registerSingleton<DisplayUsecase>(
      DisplayUsecase(locator<DisplayRepository>()));
}