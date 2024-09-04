import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repository_impl/home/tour_service_repository_impl.dart';
import '../../../domain/repository/meet/location_firestore.repository.dart';
import '../../../domain/repository/meet/mobility_directions_repository.dart';
import '../../../domain/repository/meet/start_address_repository.dart';
import '../../../domain/repository/tour_service.repository.dart';

// ======================================================================
// Provider ( Repository )
// ======================================================================
final localStorageProvider = Provider<AddressShrefRepository>((ref) => AddressShrefRepositoryImpl());

/// # 관광정보 서비스 api 사용 provider
final tourServiceApiProvider = Provider<TourServiceRepository>((ref) => TourServiceRepositoryImpl());

/// # 카카오 모빌리티 - 자동차 길찾기 api 사용 provider
final kakaoMobilityApiProvider =
Provider<MobilityDirectionsRepository>((ref) => MobilityDirectionsRepositoryImpl());

/// ## FireBase > FireStore DB > Locations Provider
final locationFireStoreDBProvider =
Provider<LocationFireStoreRepository>((ref) => LocationFireStoreRepositoryImpl()
);
