import 'package:logger/logger.dart';

import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/logger.dart';
import '../../../domain/repository/meet/location_firestore.repository.dart';

final Logger _logger = CustomLogger.logger;
class LocationFireStoreRepositoryImpl extends LocationFireStoreRepository {

  /// ## 현재 로그인 상태 Get
  @override
  Future<void> getLoginState() async {
    final isLogin = FirebaseAuthUtil().auth.currentUser;

    _logger.i('로그인 상태 확인 -> ${isLogin}'); // null 시 로그아웃됨 <-> 로그인 시 사용자 정보가 담겨잇음

  }

}