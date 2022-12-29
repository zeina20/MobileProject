import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/signUpModel.dart';

void createUser(
    {required String name,
    required String email,
    required String address,
    required String phone,
    required String password}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();
  final user = User(
      id: docUser.id,
      name: name,
      email: email,
      address: address,
      phone: phone,
      password: password);
  final json = user.toJson();
  await docUser.set(json);
}

Stream<List<User>> readUsers() {
  return FirebaseFirestore.instance.collection('users').snapshots().map(
      (snapshot) =>
          snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());
}

Future<void> delete(String id) async {
  await FirebaseFirestore.instance.collection('users').doc(id).delete();
}
