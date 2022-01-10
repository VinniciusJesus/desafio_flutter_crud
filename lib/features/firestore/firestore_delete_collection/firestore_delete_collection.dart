import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDeleteCollection {
  final _firestore = FirebaseFirestore.instance;

  Future<void> delete(String collectionName, String documentID) async {
    await _firestore.collection(collectionName).doc(documentID).delete();
  }
}
