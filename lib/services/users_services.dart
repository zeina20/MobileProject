import 'package:MobileProject/model/UsersModel.dart';
import 'package:MobileProject/model/signUpModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/movies_model.dart';

void addUserToDB({
  required String id,
  required String name,
  required String email,
  required String phone,
  required String address
}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc(id);
  final user = Users(
    name: name,
    email: email,
    phone: phone,
    address: address
  );
  final json = user.toJson();
  await docUser.set(json);
}
