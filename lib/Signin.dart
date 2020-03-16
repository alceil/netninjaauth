import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  final  AuthServices _auth=AuthServices();
  String email='';
  String pass='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: Text('Sign in with brew crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              TextFormField(
                onChanged: (val)
                {
                  setState(() {
                    email=val;
                  });
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                  setState(() {
                    pass=val;
                  });
                },
              ),
              SizedBox(height: 20,),
              RaisedButton(
                color: Colors.pink,

                onPressed: () async
                {
                  print(email);
                  print(pass);
                },
                child:Text('Sign in') ,

              )

            ],
          ),

        )
      ),
    );
  }
}
