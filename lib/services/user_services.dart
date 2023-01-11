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
