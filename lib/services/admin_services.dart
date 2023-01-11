import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/UsersModel.dart';

Stream<List<UsersModel>> readUsers() {
  CollectionReference users = FirebaseFirestore.instance.collection("users");

  print(users.doc("2nzkXMIrJZk8egCqVs6Uz"));

  return FirebaseFirestore.instance.collection('users').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => UsersModel.fromJson(doc.data())).toList());
}

Future<void> delete(String id) async {
  await FirebaseFirestore.instance.collection('users').doc(id).delete();
}
