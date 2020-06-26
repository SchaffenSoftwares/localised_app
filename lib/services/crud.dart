import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods
{
  Future<void> addData(LocData) async
  {
    Firestore.instance.collection('Location').add(LocData).catchError((e){
      print(e);
    });
  }
}