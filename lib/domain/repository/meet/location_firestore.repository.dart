import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/logger.dart';
import '../repository.dart';

part 'location_firestore.repository.g.dart';

final Logger _logger = CustomLogger.logger;

/// ## Riverpod 사용을 위한 FireStoreDB Repository
@riverpod
LocationFireStoreRepository locationFireStoreRepository(
    LocationFireStoreRepositoryRef ref) {
  return LocationFireStoreRepositoryImpl();
}

abstract class LocationFireStoreRepository extends Repository {
  Future<User?> getLoginState();
}

class LocationFireStoreRepositoryImpl extends LocationFireStoreRepository {
  /// ## 현재 로그인 상태 Get
  @override
  Future<User?> getLoginState() async => FirebaseAuthUtil().auth.currentUser;
}
