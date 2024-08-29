import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/repository/meet/location_firestore.repository.dart';

final Logger _logger = CustomLogger.logger;
class LocationFireStoreRepositoryImpl extends LocationFireStoreRepository {

  /// ## 현재 로그인 상태 Get
  @override
  Future<User?> getLoginState() async => FirebaseAuthUtil().auth.currentUser;

}