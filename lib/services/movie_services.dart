import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/movies_model.dart';

void createMovie({
  required String id,
  required String name,
  required String image,
}) async {
  final docUser = FirebaseFirestore.instance.collection('films').doc();
  final movie = Movie(
    id: docUser.id,
    name: name,
    image: image,
  );
  final json = movie.toJson();
  await docUser.set(json);
}
