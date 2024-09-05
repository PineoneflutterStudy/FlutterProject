import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

import '../../../domain/model/display/login/user.model.dart' as kkul;
import '../constant/tag.dart';
import '../db_key.dart';
import '../logger.dart';
import 'firebase_auth_util.dart';

/// # Use Firebase Firestore
class FirebaseFirestoreUtil {
  final FirebaseFirestore _firestore;
  final FirebaseAuthUtil _auth;
  final Logger _logger;

  FirebaseFirestoreUtil({
    FirebaseFirestore? firestore,
    FirebaseAuthUtil? auth,
    Logger? logger,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuthUtil(),
        _logger = logger ?? CustomLogger.logger;

  /// ## 신규 유저 정보를 파이어스토어에 저장한다.
  Future<void> setUserDoc(User user) async {
    try {
      await _firestore.collection(DBKey.DB_USERS).doc(user.uid).set({
        UsersField.UID: user.uid,
        // User에서 email은 소문자로만 반환되므로 toLowerCase() 불필요
        UsersField.EMAIL: user.email,
        UsersField.PROVIDERS: await _auth.getProvidersFromUser(user),
        UsersField.PHOTO_URL: user.photoURL,
        UsersField.CREATION_TIME: user.metadata.creationTime,
      });
    } catch (error) {
      CustomLogger.logger.e('Set user Document failed. error = $error');
    }
  }

  /// User > uid 문서 참조 위치 반환
  Future<DocumentReference?> getUserDocRef() async {
    if (!await _auth.isLoggedIn()) {
      _logger.e("User not logged in");
      return null;
    }
    final userId = _auth.getUserId();
    return _firestore.collection(DBKey.DB_USERS).doc(userId);
  }

  /// User > uid > collectionPath > docId 문서 참조 위치 반환
  Future<DocumentReference?> getCollectionDocRef(String collectionPath, String docId) async {
    return await _executeWithUserDocRef<DocumentReference?>((userDocRef) async {
      try {
        return userDocRef.collection(collectionPath).doc(docId);
      } catch (e) {
        _logger.e("Error getting document reference: $e");
        return null;
      }
    });
  }

  /// User > uid > collectionPath > docId > collectionPath > docId 문서 참조 위치 반환
  Future<DocumentReference?> getCollectionDocRefDocRef(String collectionPath, String docId, String collectionPath2, String docId2) async {
    return await _executeWithUserDocRef<DocumentReference?>((userDocRef) async {
      try {
        return userDocRef.collection(collectionPath).doc(docId).collection(collectionPath2).doc(docId2);
      } catch (e) {
        _logger.e("Error getting document reference: $e");
        return null;
      }
    });
  }

  /// User 컬렉션에서 doc 문서들을 가져오는 함수
  Future<List<Map<String, dynamic>>> getDocumentsFromUser() async {
    try {
      final querySnapshot = await _firestore.collection(DBKey.DB_USERS).get();
      return querySnapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  /// User > uid > collectionPath 특정 컬렉션에서 doc 문서들 Json 형태로 반환
  Future<List<Map<String, dynamic>>?> getDocumentsFromCollection(String collectionPath) async {
    return await _executeWithUserDocRef<List<Map<String, dynamic>>>((userDocRef) async {
      try {
        final querySnapshot = await userDocRef.collection(collectionPath).get();
        return querySnapshot.docs.map((doc) => doc.data()).toList();
      } catch (e) {
        _logger.e("Error getting collection documents: $e");
        return null;
      }
    });
  }

  /// User > uid > collectionPath 특정 컬렉션에서 doc 문서들 List<T> 형태로 반환
  Future<List<T>?> getDocumentsFromCollectionMapperData<T>(String collectionPath, T Function(Map<String, dynamic>) fromJson) async {
    return await _executeWithUserDocRef<List<T>>((userDocRef) async {
      try {
        final querySnapshot = await userDocRef.collection(collectionPath).get();
        return querySnapshot.docs
            .map((doc) => fromJson(doc.data()))
            .toList();
      } catch (e) {
        _logger.e("Error getting collection documents: $e");
        return null;
      }
    });
  }

  /// User > uid 위치에 위치한 데이터 가져오는 함수
  /// Json형태로 반환
  Future<Map<String, dynamic>?> getUserDocumentData() async {
    return await _executeWithUserDocRef<Map<String, dynamic>?>((userDocRef) async {
      try {
        DocumentSnapshot documentSnapshot = await userDocRef.get();
        return documentSnapshot.data() as Map<String, dynamic>?;
      } catch (e) {
        _logger.e("Error getting user document data: $e");
        return null;
      }
    });
  }

  /// User > uid > collection 하위 doc 리스트로 반환하는 함수
  /// List 형태로 반환 (하위 doc 은 json 형식)
  Future<List<Map<String, dynamic>>?> getSubCollectionListFromCollection(String collectionPath) async {
    return await _executeWithUserDocRef<List<Map<String, dynamic>>?>((userDocRef) async {
      try {
        QuerySnapshot querySnapshot = await userDocRef.collection(collectionPath).get();

        List<Map<String, dynamic>> documents = querySnapshot.docs.map((doc) {
          return doc.data() as Map<String, dynamic>;
        }).toList();

        return documents;
      } catch (e) {
        _logger.e("Error getting sub-collection document data: $e");
        return null;
      }
    });
  }

  /// User > uid > collection > doc 특정 위치에 데이터 가져오는 함수
  /// Json 형태로 반환
  Future<Map<String, dynamic>?> getDocumentDataFromSubCollection(String collectionPath, String docId) async {
    return await _executeWithUserDocRef<Map<String, dynamic>?>((userDocRef) async {
      try {
        DocumentSnapshot documentSnapshot = await userDocRef.collection(collectionPath).doc(docId).get();
        return documentSnapshot.data() as Map<String, dynamic>?;
      } catch (e) {
        _logger.e("Error getting sub-collection document data: $e");
        return null;
      }
    });
  }

  /// User > uid > collection > doc 특정 위치에 데이터 가져오는 함수
  /// json 형식의 데이터 T형식으로 mapping
  Future<T?> getDocumentMapperDataFromSubCollection<T>(String collection , T Function(Map<String, dynamic>) fromJson) async {
    //Todo
  }

  /// 문서 참조 위치(docRef)를 통해 문서 데이터를 가져오기
  /// json 형식
  Future<Map<String, dynamic>?> getDocumentDataFromRef(DocumentReference docRef) async {
    try {
      DocumentSnapshot documentSnapshot = await docRef.get();
      return documentSnapshot.data() as Map<String, dynamic>?;
    } catch (e) {
      _logger.e("Error getting document data: $e");
      return null;
    }
  }

  /// 문서 참조 위치(docRef)를 통해 데이터를 가져오기
  /// json 형식의 데이터 T형식으로 mapping
  Future<T?> getDocumentMapperDataFromRef<T>(DocumentReference docRef, T Function(Map<String, dynamic>) fromJson) async {
    try {
      DocumentSnapshot documentSnapshot = await docRef.get();
      Map<String, dynamic>? data = documentSnapshot.data() as Map<String, dynamic>?;

      return data != null? fromJson(data) : null;
    } catch (e) {
      _logger.e("Error getting document data: $e");
      return null;
    }
  }

  /// 참조 위치(docRef)에 문서 존재 여부 반환
  Future<bool> checkDocumentExistsFromRef(DocumentReference docRef) async {
    try {
      DocumentSnapshot documentSnapshot = await docRef.get();
      return documentSnapshot.exists;
    } catch (e) {
      _logger.e("Error checking document existence: $e");
      return false;
    }
  }

  /// 참조 위치(docRef)에 data set
  Future<void> setDocument(DocumentReference docRef, Map<String, dynamic> data) async {
    try {
      await docRef.set(data);
      _logger.d('Document successfully set!');
    } catch (error) {
      _logger.e('Error setting document: $error');
    }
  }

  /// 참조 위치(docRef)에 존재하는 data delete
  Future<void> deleteDocument(DocumentReference docRef) async {
    try {
      await docRef.delete();
      _logger.d('Document successfully deleted!');
    } catch (error) {
      _logger.e('Error deleting document: $error');
    }
  }

  /// 참조 위치(docRef)에 있는 data update
  Future<void> updateDocument(DocumentReference docRef, Map<String, dynamic> data) async {
    try {
      await docRef.update(data);
      _logger.d('Document successfully updated!');
    } catch (error) {
      _logger.e('Error updating document: $error');
    }
  }

  /// userDocRef null이 아닌 경우에만 작업하도록
  Future<T?> _executeWithUserDocRef<T>(Future<T?> Function(DocumentReference userDocRef) action) async {
    final userDocRef = await getUserDocRef();
    if (userDocRef == null) {
      _logger.e("User document reference is null");
      return null;
    }
    return await action(userDocRef);
  }

  Future<kkul.User?> getUserByEmail(String email) async {
    final String lowerCaseEmail = email.toLowerCase();
    final QuerySnapshot snapshot = await _firestore
        .collection(DBKey.DB_USERS)
        .where(UsersField.EMAIL, isEqualTo: lowerCaseEmail)
        .get();
    final List<kkul.User> userList =
        snapshot.docs.map((e) => kkul.User.fromJson(toDynamicMap(e))).toList();

    if (!CustomLogger.isDebugLogHidden) {
      CustomLogger.logger.d('${Tag.LOGIN} userList = $userList');
    }

    return userList.firstOrNull;
  }

  Map<String, dynamic> toDynamicMap(DocumentSnapshot<Object?>? snapshot) {
    final data = snapshot?.data();
    if (data is Map<String, dynamic>) {
      return data;
    } else {
      CustomLogger.logger.w('cast to Map<String, dynamic> failed. data is ${data.runtimeType}');
      return {}; // 데이터가 null이거나 Map으로 캐스팅할 수 없는 경우 빈 맵 반환
    }
  }
}
