import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseService {
  //collection reference
  final String uid;

  DatabaseService(this.uid);

  final CollectionReference userCollection = Firestore.instance.collection(
      'user');

  Future updateUserData(String firstName, String middleName, String surName,
      String panCardNumber, String adharCardNumber,) async {
    return await userCollection.document(uid).setData({
      'firstName': firstName,
      'middleName': middleName,
      'surName': surName,
      'panCardNumber': panCardNumber,
      'aadharCardNumber': adharCardNumber,
    });
  }
}