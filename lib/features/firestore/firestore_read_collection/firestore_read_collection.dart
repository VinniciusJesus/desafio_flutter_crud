import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreReadCollection {
  final _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Map<String, dynamic>>> read(
      String collectionName) async {
    return await _firestore.collection(collectionName).get();
  }
}
