import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import 'package:firebase_auth/firebase_auth.dart';

import '../services/user_data.dart';

  // @override
  // State<SignUp> createState() => _SignUpState();

class userProfile extends StatefulWidget {
  @override
  State<userProfile> createState() => _userProfileState();
}
class _userProfileState extends State<userProfile> {
 File? _image;
  late String _url;
 
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth auth = FirebaseAuth.instance;
    return SafeArea(
      
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
              ),
              onPressed: () {
                 auth.signOut();
                GoRouter.of(context).go('/login');
              },
              child: Text("log out"),
            ),
          ],
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/'),
            icon: Icon(Icons.arrow_back)),
        title: Text('Users Page'),
        backgroundColor: Color(0xFF363f93),
      ),
      
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .5,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                            bottomRight: Radius.elliptical(
                                MediaQuery.of(context).size.width * 0.5, 100.0),
                          ),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://cdn-icons-png.flaticon.com/512/219/219969.png"),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        children: [
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                LoggedInUserData.userName,
                                style: TextStyle(
                                  color: Color(0xffBDBDBD),
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                         GestureDetector(
                              onTap: pickImage, child: Icon(Icons.camera_alt)),
                          CircleAvatar(
                            radius: 70,
                            backgroundImage:  _image == null ? null : FileImage(_image!)
                          ),
                          
                        CircleAvatar(radius: 30,
                            backgroundColor: Color(0xffD8D8D8),
                          child: IconButton( onPressed: () =>
                                      GoRouter.of(context).go('/editProfile'), 

                          icon: Icon(Icons.edit) )),
                       
                        Builder(
                            builder: (context) => ElevatedButton(
                              onPressed: () {
                                uploadImage(context);
                              },
                              child: Text('Upload Image'),
                            ),
                          ),
                        ],
                         
                      ),
                    ),
                  ],
                ),
              ),
              
              
              Container(
                color: Color(0xffF8F8F8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Email:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            LoggedInUserData.userEmail,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Address:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            LoggedInUserData.userAddress,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffF8F8F8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Phone:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            LoggedInUserData.userPhoneNumber,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          Text('Date of Birth:'),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            '20/12',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      //converting from xfile to file
      _image = File(pickedFile!.path);
    });
  }

  void uploadImage(context) async {
    try {
     var name =LoggedInUserData.userName;
       Reference ref = FirebaseStorage.instance.ref().child("images/$name");
     //Reference ref = FirebaseStorage.instance.ref().child("images/mariammm");
      UploadTask uploadTask = ref.putFile(_image!);
      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);
      SnackBar snackbar = SnackBar(content: Text('success'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);

      String url = await taskSnapshot.ref.getDownloadURL();
      print('url $url');
      setState(() {
        // FirebaseFirestore.instance
        //     .collection('users')
        //     .doc(uid)
        //     .update({'image_url': url});
        _url = url;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(ex.toString())),
      );
    }
  }
}



