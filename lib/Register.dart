import 'package:netninjafbcourseapp/Loader.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:netninjafbcourseapp/authservices.dart';
class Register extends StatefulWidget {
  final Function toggleview;
  Register({this.toggleview});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final  AuthServices _auth=AuthServices();
  final _formkey=GlobalKey<FormState>();
  String email='';
  String pass='';
  String error='';
  bool loading=false;
  @override
  Widget build(BuildContext context) {
    return loading?Loader(): Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: Text('Sign up with brew crew'),
        actions: <Widget>[
          FlatButton.icon(onPressed: (){
            widget.toggleview();
          }, icon: Icon(Icons.person), label: Text('Sign'))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 30.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Email'),
                  validator: (val)=>val.isEmpty?'Enter ur Email kid':null,
                  onChanged: (val)
                  {
                    setState(() {
                      email=val;
                    });
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  validator: (val)=>val.length<6?'Enter a password + 6 digits':null,
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
                    if(_formkey.currentState.validate())
                      {
                        setState(() =>
                        loading=true);
                        dynamic result=await _auth.registerwithemailandpassword(email, pass);
                        if(result==null)
                          {
                            setState(() {
                              loading=false;
                              error='Please supply a vaild email';
                            });
                          }
                      }
                  },
                  child:Text('Register') ,
                ),
                SizedBox(height: 20,),
                Text(error,style: TextStyle(color:Colors.red ),)
              ],
            ),
          )
      ),
    );
  }
}
