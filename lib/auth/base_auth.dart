import 'package:gc_proto_flutter/auth/user.dart';

abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<User> getCurrentUser();

  Stream<User> get getCurrentUserStream;

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

/*class Auth implements BaseAuth {
  /*final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<User> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return User.ofFirebaseUser(user);
  }

  Stream<User> get getCurrentUserStream {

    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }

  User _userFromFirebase(FirebaseUser user) {
    return user == null ? null : User.ofFirebaseUser(user);
  }

  Stream<User> get onAuthStateChanged {
    // map all `FirebaseUser` objects to `User`, using the `_userFromFirebase` method
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> sendEmailVerification() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }*/
}*/

enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}