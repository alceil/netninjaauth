import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
import 'package:netninjafbcourseapp/brew.dart';
import 'package:netninjafbcourseapp/database.dart';
import 'package:provider/provider.dart';
import 'brew_list.dart';
class Home extends StatelessWidget {
  AuthServices _auth=AuthServices();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DataBaseServices().brews,
      child: Scaffold(
        appBar:AppBar(
          title: Text('Crew brew'),
          backgroundColor: Colors.brown[100],
          elevation: 0.0,
          actions: <Widget>
          [
            FlatButton.icon(onPressed: (){_auth.signout();}, icon: Icon(Icons.person), label:Text('Logout')),
            FlatButton.icon(onPressed: null, icon: Icons, label: null)
          ],
        ) ,
        body: BrewList(),
      ),
    );

  }
}
