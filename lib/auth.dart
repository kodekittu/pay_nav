import 'package:firebase_auth/firebase_auth.dart';
import 'package:paynav/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFormFirebaseUser(FirebaseUser user){
    return user != null ? User(user.uid) : null;
  }
  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}