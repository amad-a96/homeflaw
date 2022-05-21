
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

    Future<UserCredential?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential theUserCredentials = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
     
      return theUserCredentials;
    } on FirebaseAuthException catch (err) {
    print("==========>>>>>>" + err.message!);
     
    }
  }


    Future<UserCredential?> signupWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential theUserCredentials = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
     
      return theUserCredentials;
    } on FirebaseAuthException catch (err) {
    print("==========>>>>>>" + err.message!);
     
    }
  }
 logOut() async {
    await _firebaseAuth.signOut();
    
  }
}