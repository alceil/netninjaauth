import 'package:cloud_firestore/cloud_firestore.dart';
class DataBaseServices{
  final CollectionReference brewcollections=Firestore.instance.collection("brews");
}