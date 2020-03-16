import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';

class AuthServices
{
  FirebaseAuth _auth=FirebaseAuth.instance;
  
  User _userfromfirebase (FirebaseUser user)
  {
    return user!=null?User(uid: user.uid):null;
    
  }
Stream <User> get user
{
  return _auth.onAuthStateChanged.map(_userfromfirebase);

}

Future signout() async
{


}


  
  Future siginAnom() async
  {

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
