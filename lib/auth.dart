import 'package:firebase_auth/firebase_auth.dart';
import 'package:paynav/database.dart';
import 'package:paynav/user.dart';
class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(user.uid) : null;
  }
  Future signInAnon(String firstName, String middleName, String surName,
      String panCardNumber, String adharCardNumber,) async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      await DatabaseService(user.uid).updateUserData(firstName, middleName, surName,panCardNumber,adharCardNumber);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}