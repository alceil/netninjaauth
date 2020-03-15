import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final  AuthServices _auth=AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: Text('Sign in with brew crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
        child: RaisedButton(
          onPressed: () async{
            dynamic result =await _auth.siginAnom();
            if(result==null)
              {
                print('error');

              }
            else
              {
                print(result);
              }


          },child: Text('sign in ano'),
        ),
      ),
    );
  }
}
