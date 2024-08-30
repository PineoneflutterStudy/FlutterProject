// ======================================================================
// Data
// ======================================================================
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repository_impl/home/tour_service_repository_impl.dart';
import '../../../domain/repository/tour_service.repository.dart';

/// # 관광정보 서비스 api 사용 provider
final tourServiceProvider = Provider<TourServiceRepository>((ref) => TourServiceRepositoryImpl());