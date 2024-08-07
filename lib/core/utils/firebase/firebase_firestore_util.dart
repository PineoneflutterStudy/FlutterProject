import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

import '../DBkey.dart';
import '../logger.dart';
import 'firebase_auth_util.dart';

/// # Use Firebase Firestore
class FirebaseFirestoreUtil {

  final FirebaseFirestore firestore;
  final FirebaseAuthUtil auth;
  final Logger _logger;

  FirebaseFirestoreUtil({
    FirebaseFirestore? firestore,
    FirebaseAuthUtil? auth,
    Logger? logger,
  })  : firestore = firestore ?? FirebaseFirestore.instance,
        auth = auth ?? FirebaseAuthUtil(),
        _logger = logger ?? CustomLogger.logger;

  /// User > uid
  Future<DocumentReference?> getUserDocRef() async {
    final user = auth.getCurrentUser();
    if (user == null) {
      _logger.e("User not logged in");
      return null;
    }
    return firestore.collection(DBKey.DB_USERS).doc(user.uid);
  }

  /// User > uid > collectionPath > docId
  Future<DocumentReference?> getFirestoreDocRef(String collectionPath, String docId) async {
    final userDocRef = await getUserDocRef();
    if (userDocRef == null) {
      _logger.e("User document reference is null");
      return null;
    }
    return userDocRef.collection(collectionPath).doc(docId);
  }

  Future<void> setDocument(DocumentReference docRef, Map<String, dynamic> data) async {
    try {
      await docRef.set(data);
      _logger.d('Document successfully set!');
    } catch (error) {
      _logger.e('Error setting document: $error');
    }
  }

  Future<void> deleteDocument(DocumentReference docRef) async{
    try {
      await docRef.delete();
      _logger.d('Document successfully deleted!');
    } catch (error) {
      _logger.e('Error deleting document: $error');
    }
  }

}