import 'package:firebase_auth/firebase_auth.dart';

import '../repository.dart';

/// ## Riverpod 사용을 위한 FireStoreDB Repository
abstract class LocationFireStoreRepository extends Repository {
  Future<User?> getLoginState();
}