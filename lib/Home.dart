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
    void _showSettingsPanel(){
      showModalBottomSheet(context: context, builder: (context){
        return Container(
        padding: EdgeInsets.symmetric(vertical:20.0,horizontal:60.0),
          child: Text('Bottom Sheet'),
        );
      });
    }

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
            FlatButton.icon(onPressed: ()=>_showSettingsPanel(), icon: Icon(Icons.settings), label: Text('Settings'))
          ],
        ) ,
        body: BrewList(),
      ),
    );

  }
}
