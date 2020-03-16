import 'constants.dart';
import 'package:flutter/material.dart';
class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
final _formKey=GlobalKey<FormState>();
final List<String> sugars=['0','1','2','3','4','5','6'];
String _currentname;
String _currentsugar;
int _currentstrength;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text('Update Your Brew settings',style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          TextFormField(
            decoration:textInputDecoration ,
            validator: (val)=>val.isEmpty?'Please enter your name':null,
              onChanged: (val) => setState(()=>_currentname=val),
          ),
          SizedBox(height: 15,),
          DropdownButtonFormField(
            value: _currentsugar??'0',
            decoration: textInputDecoration,
            items: sugars.map((sugar){
              return DropdownMenuItem(
              value: sugar,
                child: Text('${sugar} sugars'),
              );
            }).toList(),
            onChanged: (val) => setState(()=>_currentsugar=val),
          ),
          Slider(
            value: (_currentstrength??100).toDouble(),
            min:100.0,
            max: 900.0,
            divisions: 8,
            activeColor:  Colors.brown[_currentstrength??100],
            inactiveColor:Colors.brown[_currentstrength??100],

            onChanged: (val)=>setState(()=>_currentstrength=val.round()),
          ),
          SizedBox(height: 20,),
          RaisedButton(
            color: Colors.pink,
            child: Text('Update',style: TextStyle(color: Colors.white),),onPressed: () async{
              print(_currentname);
              print(_currentsugar);
              print(_currentstrength);

          },
          )
        ],
      ),
    );
  }
}
