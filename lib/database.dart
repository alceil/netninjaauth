import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:netninjafbcourseapp/brew.dart';
import 'package:netninjafbcourseapp/user.dart';
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
  List<Brew> _brewlistfromsnapshots(QuerySnapshot snapshot)
  {
    return snapshot.documents.map((docs){
      return Brew(
        sugars: docs.data['sugars'],
        name: docs.data['name'],
        strength: docs.data['strength'],
      );

    }).toList();

  }
  UserData _userDatafromsnapshot(DocumentSnapshot snapshot)
  {
    return UserData(
        uid: uid,
        name: snapshot.data['name'],
        sugar:snapshot.data['sugars'] ,
      strength: snapshot.data['strength'],
    );
  }
  Stream<UserData> get userdata{
    return brewcollections.document(uid).snapshots().map(_userDatafromsnapshot);
  }
  Stream<List<Brew>> get brews
  {
    return brewcollections.snapshots().map(_brewlistfromsnapshots);
  }
}