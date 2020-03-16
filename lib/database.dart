import 'package:cloud_firestore/cloud_firestore.dart';
class DataBaseServices{
  final String uid;
  DataBaseServices({this.uid});
  final CollectionReference brewcollections=Firestore.instance.collection("brews");
  Future updateUserData(String sugar,String name,int strength) async
  {
    return await brewcollections.document(uid).setData({
      'sugars':sugar,
      'name':name,
      'strength':strength

    });
  }
}