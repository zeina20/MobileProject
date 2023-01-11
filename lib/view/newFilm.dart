// import 'dart:io';
// import 'dart:core';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../services/admin_services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'Login.dart';

// class newFilm extends StatefulWidget {
//   const newFilm({super.key});

//   @override
//   State<newFilm> createState() => _newFilmState();
// }

// class _newFilmState extends State<newFilm> {
//   var _formKey1 = GlobalKey<FormState>();

//   var _controller3 = TextEditingController();
//   var _controller7 = TextEditingController();
//   var _controller4 = TextEditingController();

//   Widget Name() {
//     return Container(
//       margin: EdgeInsets.only(left: 30, right: 30),
//       child: TextFormField(
//         controller: _controller3,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           labelText: "FilmName",
//           hintText: "FilmName",
//         ),
//       ),
//     );
//   }

//   Widget Description() {
//     return Container(
//       margin: EdgeInsets.only(left: 30, right: 30),
//       child: TextFormField(
//         controller: _controller7,
//         decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           labelText: "Description",
//           hintText: "Description",
//         ),
//       ),
//     );
//   }

//   String imgUrl = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [Color(0xff363f93), Colors.cyanAccent])),
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey1,
//             child: Column(children: [
//               Image.asset(
//                 "assets/images/signup.jpg",
//                 height: 200,
//                 width: double.infinity,
//               ),
//               SizedBox(height: 20),
//               Container(
//                 margin: EdgeInsets.only(left: 10),
//                 child:
//                     Row(mainAxisAlignment: MainAxisAlignment.start, children: [
//                   FloatingActionButton(
//                     onPressed: () => GoRouter.of(context).go('/'),
//                     child: Icon(Icons.west),
//                   ),
//                 ]),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 "Add Movie",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 30),
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Name(),
//               SizedBox(
//                 height: 30,
//               ),
//               Description(),
//               SizedBox(
//                 height: 30,
//               ),
//               IconButton(
//                   onPressed: () async {
//                     //picking an image
//                     ImagePicker imagePicker = ImagePicker();
//                     // XFile? file = await imagePicker.pickImage(
//                     //     source: ImageSource.gallery);
//                     final XFile? image = await imagePicker.pickImage(
//                         source: ImageSource.gallery);
//                     print('${image?.path}');
//                     if (image == null) return;
//                     String uniqueFileName = _controller3.text;

//                     //upload image ti firebase
//                     //get a reference to storage root
//                     Reference referenceRoot = FirebaseStorage.instance.ref();
//                     Reference referenceDirImages =
//                         referenceRoot.child('images');

//                     //create a reference for image to be stored
//                     Reference referenceImageToUpload =
//                         referenceDirImages.child(uniqueFileName);
//                     //handle errors/success
//                     try {
//                       //store the file
//                       await referenceImageToUpload.putFile(File(image.path));
//                       //get the download url
//                       imgUrl = await referenceImageToUpload.getDownloadURL();
//                     } catch (error) {}
//                   },
//                   icon: Icon(Icons.camera_alt)),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 25),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       width: 150,
//                     ),
//                     FloatingActionButton(
//                         child: Icon(Icons.east),
//                         backgroundColor: Colors.black45,
//                         onPressed: () async {
//                           if (imgUrl.isEmpty) {
//                             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                                 content: Text('Please upload an image')));

//                             return;
//                           }
//                           if (_formKey1.currentState!.validate()) {
//                             final String newName = _controller3.text;
//                             final String newDescription = _controller7.text;

//                             createFilm(
//                               name: newName,
//                               description: newDescription,
//                             );
//                             SnackBar snackbar = SnackBar(
//                                 content: Text(
//                                     "Name ${_controller3.value.text} \n email ${_controller7.value.text}"));

//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(snackbar);
//                           }
//                           //print(_controller3);
//                         }),
//                   ],
//                 ),
//               )
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
