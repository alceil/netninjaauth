import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices
{
  Future siginAnom() async
  {
    FirebaseAuth _auth=FirebaseAuth.instance;
    try{
      AuthResult result= await _auth.signInAnonymously();
      FirebaseUser user=result.user;
      return user;
    }catch(e)
    {
      print(e.toString());
      return null;

    }

  }


}
