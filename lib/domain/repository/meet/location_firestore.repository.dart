import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/utils/firebase/firebase_auth_util.dart';
import '../../../core/utils/firebase/firebase_firestore_util.dart';
import '../../../core/utils/firebase/firebase_storage_util.dart';
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
  Future<String> getImgUrl(String imgLocation);
  Future<List<String>?> getAllImgUrl(String directoryName);
  Future<List<Map<String, dynamic>>?> getLocationAllInfo(String key);
  Future<void> deleteLocationAll(String key, String docId);
}

class LocationFireStoreRepositoryImpl extends LocationFireStoreRepository {
  /// ## 현재 로그인 상태 Get
  @override
  Future<User?> getLoginState() async => FirebaseAuthUtil().auth.currentUser;

  /// ## 출발지, 목적지 이미지 Url Get
  @override
  Future<String> getImgUrl(String imgLocation) async => await FirebaseStorageUtil().getImageUrl(imgLocation);

  /// ## 마커에 사용할 디렉토리 내부 모든 이미지 Url Get
  @override
  Future<List<String>?> getAllImgUrl(String directoryName) async => await FirebaseStorageUtil().getAllImageUrl(directoryName);

  /// ## Firestore DB > Locations 정보 Get
  @override
  Future<List<Map<String, dynamic>>?> getLocationAllInfo(String key) async => await FirebaseFirestoreUtil().getDocumentsFromCollection(key);

  /// ## Firestore DB > Locations 정보 All Delete
  @override
  Future<void> deleteLocationAll(String key, String docId) async {
    var docRef = await FirebaseFirestoreUtil().getCollectionDocRef(key, docId);
    if (docRef != null) {
      await FirebaseFirestoreUtil().deleteDocument(docRef);
    } else {
      _logger.i('Locations Document is null');
    }

  }
}
