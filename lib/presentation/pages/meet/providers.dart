import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../data/data_source/api/kakao_mobility/kakao_mobility_api.dart';
import '../../../data/data_source/local_storage/meet/local_prefs_storage.dart';
import '../../../data/data_source/remote/tour_service.api.dart';
import '../../../data/repository_impl/home/tour_service_repository_impl.dart';
import '../../../data/repository_impl/meet/mobility_directions_repository_impl.dart';
import '../../../data/repository_impl/meet/start_address_repository_impl.dart';
import '../../../domain/repository/home/tour_guide_repository.dart';
import '../../../domain/repository/meet/mobility_directions_repository.dart';
import '../../../domain/repository/meet/start_address_repository.dart';
import '../../../domain/repository/tour_service.repository.dart';
import '../../../domain/usecase/meet/get_all_address.dart';
import '../../../main.dart';

// ======================================================================
// Domain
// ======================================================================
final addressRepositoryProvider =
    Provider<StartAddressRepository>((ref) => StartAddressRepositoryImpl(
          localPrefsStorage: ref.read(localStorageProvider),
        ));

/// # 모든 출발지 정보
final getAllAddressProvider = Provider((ref) => GetAllAddress(
      repository: ref.read(addressRepositoryProvider),
    ));

/*final tourGuideApiRepositoryProvider =
    Provider<TourGuideRepository>((ref) => TourGuideRepositoryImpl(
          api: ref.read(apiProvider),
          mobilityApi: ref.read(kakaoMobilityApiProvider),
        ));*/

// ======================================================================
// Data
// ======================================================================
final localStorageProvider = Provider<LocalPrefsStorage>(
  (ref) => LocalPrefsStorageImpl(sharedPreferences: sharedPref),
);

/// # 관광정보 서비스 api 사용 provider
final apiProvider = Provider<TourServiceRepository>((ref) => TourServiceRepositoryImpl());

/// # 카카오 모빌리티 - 자동차 길찾기 api 사용 provider
final kakaoMobilityApiProvider =
    Provider<MobilityDirectionsRepository>((ref) => MobilityDirectionsRepositoryImpl());
