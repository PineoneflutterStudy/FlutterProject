import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthUtil {
  final FirebaseAuth auth;

  FirebaseAuthUtil({FirebaseAuth? auth}) : auth = auth ?? FirebaseAuth.instance;

  User? getCurrentUser() => auth.currentUser;

  String? getUserId() => getCurrentUser()?.uid;

  Future<bool> isLoggedIn() async => (getCurrentUser() != null);
}