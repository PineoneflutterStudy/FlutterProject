import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../core/utils/logger.dart';
import '../repository.dart';

part 'banner_firestore.repository.g.dart';

final Logger _logger = CustomLogger.logger;

/// ## Riverpod 사용을 위한 FireStoreDB Repository
@riverpod
BannerFireStoreRepository bannerFireStoreRepository(
    BannerFireStoreRepositoryRef ref) {
  return BannerFireStoreRepositoryImpl();
}

abstract class BannerFireStoreRepository extends Repository {
  Future<Map<String, dynamic>?> getBannerList();
}

class BannerFireStoreRepositoryImpl extends BannerFireStoreRepository {
  /// ## Firestore DB > Locations 정보 Get
  @override
  Future<Map<String, dynamic>?> getBannerList() async =>
      await FirebaseFirestoreUtil().getBannerDocumentData();
}
