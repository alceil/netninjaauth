import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
class Home extends StatelessWidget {
  AuthServices _auth=AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Crew brew'),
        backgroundColor: Colors.brown[100],
        elevation: 0.0,
        actions: <Widget>
        [
          FlatButton.icon(onPressed: (){_auth.signout();}, icon: Icon(Icons.person), label:Text('Logout'))
        ],
      ) ,
    );

  }
}
