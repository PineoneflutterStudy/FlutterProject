import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

import '../DBkey.dart';
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

  /// User > uid
  Future<DocumentReference?> getUserDocRef() async {
    if (!await _auth.isLoggedIn()) {
      _logger.e("User not logged in");
      return null;
    }
    final userId = _auth.getUserId();
    return _firestore.collection(DBKey.DB_USERS).doc(userId);
  }

  /// User > uid > collectionPath > docId
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

  /// User 컬렉션에서 문서들을 가져오는 함수
  Future<List<Map<String, dynamic>>> getDocumentsFromUser() async {
    try {
      final querySnapshot = await _firestore.collection(DBKey.DB_USERS).get();
      return querySnapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      print(e);
      return [];
    }
  }

  /// User > 특정 컬렉션에서 문서들을 가져오는 함수
  Future<List<Map<String, dynamic>>?> getDocumentsFromCollection(String collectionPath) async {
    return await _executeWithUserDocRef<List<Map<String, dynamic>>>((userDocRef) async {
      try {
        final querySnapshot = await userDocRef.collection(collectionPath).get();
        return querySnapshot.docs.map((doc) => doc.data()).toList();
      } catch (e) {
        _logger.e("Error getting collection documents: $e");
        return [];
      }
    });
  }

  /// 특정 문서에서 데이터를 가져오는 함수
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

  /// 특정 컬렉션 경로와 문서 ID로 서브 컬렉션에서 문서 데이터를 가져오기
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

  /// 문서 참조(docRef)를 통해 문서 데이터를 가져오기
  Future<Map<String, dynamic>?> getDocumentDataFromRef(DocumentReference docRef) async {
    try {
      DocumentSnapshot documentSnapshot = await docRef.get();
      return documentSnapshot.data() as Map<String, dynamic>?;
    } catch (e) {
      _logger.e("Error getting document data: $e");
      return null;
    }
  }

  /// 문서 존재 여부 반환
  Future<bool> checkDocumentExistsFromRef(DocumentReference docRef) async {
    try {
      DocumentSnapshot documentSnapshot = await docRef.get();
      return documentSnapshot.exists;
    } catch (e) {
      _logger.e("Error checking document existence: $e");
      return false;
    }
  }

  /// docRef 위치에 data set
  Future<void> setDocument(DocumentReference docRef, Map<String, dynamic> data) async {
    try {
      await docRef.set(data);
      _logger.d('Document successfully set!');
    } catch (error) {
      _logger.e('Error setting document: $error');
    }
  }

  /// docRef 위치에 있는 data delete
  Future<void> deleteDocument(DocumentReference docRef) async {
    try {
      await docRef.delete();
      _logger.d('Document successfully deleted!');
    } catch (error) {
      _logger.e('Error deleting document: $error');
    }
  }

  /// docRef 위치에 있는 data update
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
}