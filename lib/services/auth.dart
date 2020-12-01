import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign in Anon 
  Future signInAnon() async {
    try {
      UserCredential user = await _auth.signInAnonymously();
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }



}
