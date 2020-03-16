import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/Register.dart';
import 'package:netninjafbcourseapp/Signin.dart';
class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool ShowSignin=true;
  void ToggleView()
  {
    setState(() {
      ShowSignin=!ShowSignin;
    });

  }
  @override
  Widget build(BuildContext context) {
    if(ShowSignin)
      {
        return signin(toggleview: ToggleView,);
      }
    else
      {
        return Register(toggleview: ToggleView);
      }
  }
}
