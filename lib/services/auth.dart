import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/model/user.dart';
class AuthService{
  final FirebaseAuth _auth=FirebaseAuth.instance;

  //create user object based on firebas user..
  // User _userFromFirebaseUser(FirebaseUser user){
  //   return user!=null? User(uid:user.uid):null;
  //   }

  //sign in anon
  Future signInAnon() async{
    try{
      AuthResult result=await _auth.signInAnonymously();
      FirebaseUser user=result.user;
      return user;
    }catch(e){
        print(e.toString());
        return null;
    }
  }

  //sign in with email & password

  //register with email & password

  //sign out

}