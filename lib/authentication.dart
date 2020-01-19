import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future signIn(String email, String password);

  Future signUp(String email, String password, String firstName, String lastName, String location);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future signIn(String email, String password) async {
    try {
      AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    }
    catch(e){
      return null;
    }
  }

  Future signUp(String email, String password, String firstName, String lastName, String location) async {
    try {
      AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser user = result.user;
      var userUpdateInfo = new UserUpdateInfo(); //create user update object
      userUpdateInfo.displayName = firstName + " " + lastName + " " +
          location; //set user display name to your variable
      print(firstName);

      await user.updateProfile(userUpdateInfo); //update the info
      await user.reload(); //reload the user data
      print(user.displayName);

      return user;
    }
    catch(e){
      return null;
    }
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user;
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
  }
}