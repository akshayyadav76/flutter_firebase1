import 'package:flutter/material.dart';
import 'package:flutter_firebase/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth=AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar:AppBar(  
        title: Text('Sign in TunSawThant'),
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
        child:RaisedButton(          
          onPressed:() async{
           dynamic result= await _auth.signInAnon();
           if(result==null){
             print('Error Signing in');
           }else{
             print('Sign in');
             print(result);
           }
          },
          child: Text('Sign In anon'),
        )
      ),
    );
  }
}