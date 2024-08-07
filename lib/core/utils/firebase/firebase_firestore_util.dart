import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../DBkey.dart';
import '../logger.dart';

class FirebaseFirestoreUtil {

  Future<User?> _getCurrentUser() async => FirebaseAuth.instance.currentUser;

  /// User > uid
  Future<DocumentReference?> getUserDocRef() async {
    final user = await _getCurrentUser();
    if (user == null) {
      CustomLogger.logger.e("User not logged in");
      return null;
    }
    return FirebaseFirestore.instance.collection(DBKey.DB_USERS).doc(user.uid);
  }

  /// User > uid > collectionPath > docId
  Future<DocumentReference?> getFirestoreDocRef(String collectionPath, String docId) async {
    final userDocRef = await getUserDocRef();
    if (userDocRef == null) {
      CustomLogger.logger.e("userDocRef is null");
      return null;
    }
    return userDocRef.collection(collectionPath).doc(docId);
  }

  Future<void> setDocument(DocumentReference docRef, Map<String, dynamic> data) async {
    try {
      await docRef.set(data);
      print('Document successfully set!');
    } catch (error) {
      print('Error setting document: $error');
    }
  }

  Future<void> deleteDocument(DocumentReference docRef) async{
    try {
      await docRef.delete();
      print('Document successfully deleted!');
    } catch (error) {
      print('Error deleting document: $error');
    }
  }

}