import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';

class AuthServices
{
  
  User _userfromfirebase (FirebaseUser user)
  {
    return user!=null?User(uid: user.uid):null;
    
  }
  
  
  Future siginAnom() async
  {
    FirebaseAuth _auth=FirebaseAuth.instance;
    try{
      AuthResult result= await _auth.signInAnonymously();
      FirebaseUser user=result.user;
      return _userfromfirebase(user);
    }catch(e)
    {
      print(e.toString());
      return null;

    }

  }


}
