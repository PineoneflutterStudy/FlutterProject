import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../core/utils/firebase/firebase_storage_util.dart';
import '../repository.dart';

part 'location_firestore.repository.g.dart';

/// ## Riverpod 사용을 위한 FireStoreDB Repository
@riverpod
LocationFireStoreRepository locationFireStoreRepository(
    LocationFireStoreRepositoryRef ref) {
  return LocationFireStoreRepositoryImpl();
}

abstract class LocationFireStoreRepository extends Repository {
  Future<User?> getLoginState();
  Future<String> getImgUrl(String imgLocation);
  Future<List<Map<String, dynamic>>?> getLocationAllInfo(String key);
}

class LocationFireStoreRepositoryImpl extends LocationFireStoreRepository {
  /// ## 현재 로그인 상태 Get
  @override
  Future<User?> getLoginState() async => FirebaseAuthUtil().auth.currentUser;

  /// ## 출발지, 목적지 이미지 Url Get
  @override
  Future<String> getImgUrl(String imgLocation) async => await FirebaseStorageUtil().getPngImageUrl(imgLocation);

  /// ## Firestore DB > Locations 정보 Get
  @override
  Future<List<Map<String, dynamic>>?> getLocationAllInfo(String key) async => await FirebaseFirestoreUtil().getDocumentsFromCollection(key);
}
