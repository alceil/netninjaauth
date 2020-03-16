import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/Authenticate.dart';
import 'package:netninjafbcourseapp/Home.dart';
import 'package:provider/provider.dart';
import 'package:netninjafbcourseapp/user.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user=Provider.of<User>(context);
    if(user==null)
      {
        return Authentication() ;

      }
    else
      {
        return Home();

      }

  }
}
