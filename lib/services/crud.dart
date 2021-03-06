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

class DatabaseMethods
{
  //chat
  createChatRoom(String chatRoomId, chatRoomMap)
  {
    Firestore.instance.collection('ChatRoom')
        .document(chatRoomId).setData(chatRoomMap).catchError((e)
    {
      print(e.toString());
      print("CHATTTTT ERRORRRRRRRR");
    });
  }

  getUserByEmail(String email) async
  {
    return await Firestore.instance.collection('locations')
        .where("email", isEqualTo: email)
        .getDocuments();
  }

  addMessages(String chatRoomId, messageMap)
  {
    print(chatRoomId);
    Firestore.instance.collection('ChatRoom')
        .document(chatRoomId)
        .collection("chats")
        .add(messageMap).catchError((e)
    {
      print(e.toString());
    });
  }

  getChatRooms(String username) async
  {
    return await Firestore.instance.collection("ChatRoom")
        .where("users", arrayContains: username)
        .snapshots();
  }

  getMessages(String chatRoomId) async
  {
    print(chatRoomId+" get messages");
    try{
      return Firestore.instance.collection('ChatRoom')
          .document(chatRoomId)
          .collection("chats")
          .orderBy("time", descending: false)
          .snapshots();
    }
    catch(e)
    {
      print(e.toString());
    }
  }

  getCardDetails(String username) async
  {
    print(username+" card function");
    return Firestore.instance.collection('Cards')
        .where("name", isEqualTo: username)
        .getDocuments();
  }
}

class Database
{

  final String uid;

  Database({
    this.uid
  });

  //references
  final CollectionReference location = Firestore.instance.collection('locations');

  Future updateUserData
      (
      String id,
      String searchKey,
      String name,
      String email,
      String type,
      double latitude,
      double longitude
      ) async
  {
    return await location.document(uid).setData({
      'id': id,
      'searchKey': searchKey,
      'name': name,
      'type': type,
      'latitude': latitude,
      'longitude': longitude,
      'email': email
    });
  }
}