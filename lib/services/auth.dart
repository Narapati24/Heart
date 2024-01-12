import 'package:firebase_auth/firebase_auth.dart';
import 'package:heart/services/database.dart';

class FirebaseAuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword(
      String email, String password, String fullname) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = credential.user;
      if (user != null) {
        await DatabaseService(uid: user.uid).updateUserData(fullname);
      }
      return credential.user;
    } catch (e) {
      print("some error accured $e");
    }
    return null;
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("some error accured");
    }
    return null;
  }
}
