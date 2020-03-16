import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
import 'package:netninjafbcourseapp/user.dart';
import 'package:netninjafbcourseapp/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:netninjafbcourseapp/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}


