import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUpdateCollection {
  final _firestore = FirebaseFirestore.instance;

  Future<void> update({
    required String documentID,
    required String collection,
    required Map<String, Object> data,
  }) async {
    await _firestore.collection(collection).doc(documentID).update(data);
  }
}
