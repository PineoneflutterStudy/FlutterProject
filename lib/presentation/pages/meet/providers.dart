import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data_source/api/tour_guide/tour_guide_api.dart';
import '../../../data/data_source/local_storage/meet/local_prefs_storage.dart';
import '../../../data/repository_impl/home/tour_guide_repository_impl.dart';
import '../../../data/repository_impl/meet/start_address_repository_impl.dart';
import '../../../domain/repository/home/tour_guide_repository.dart';
import '../../../domain/repository/meet/start_address_repository.dart';
import '../../../domain/usecase/meet/get_all_address.dart';
import '../../../main.dart';

// ======================================================================
// Domain
// ======================================================================
final addressRepositoryProvider =
    Provider<StartAddressRepository>((ref) => StartAddressRepositoryImpl(
          localPrefsStorage: ref.read(localStorageProvider),
        ));

// 모든 출발지 정보
final getAllAddressProvider = Provider((ref) => GetAllAddress(
      repository: ref.read(addressRepositoryProvider),
    ));

final tourGuideApiRepositoryProvider =
    Provider<TourGuideRepository>((ref) => TourGuideRepositoryImpl(
          api: ref.read(apiProvider),
    ));

// ======================================================================
// Data
// ======================================================================
final localStorageProvider = Provider<LocalPrefsStorage>(
  (ref) => LocalPrefsStorageImpl(sharedPreferences: sharedPref),
);

// 관광정보 서비스 api 사용 provider
final apiProvider = Provider<TourGuideApi>((ref) => TourGuideApiImpl());
