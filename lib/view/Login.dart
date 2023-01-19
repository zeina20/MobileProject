import 'dart:convert';

import 'package:MobileProject/services/movies_data_services.dart';
import 'package:MobileProject/services/user_data.dart';
import 'package:MobileProject/view/userProfile.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:MobileProject/main.dart';
import 'package:MobileProject/data/movies_data.dart';
import 'package:go_router/go_router.dart';
import 'SignUp.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  var _controller1 = TextEditingController();

  var _controller2 = TextEditingController();

  Widget email() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
      child: TextFormField(
        //  autovalidateMode: AutovalidateMode.always,
        controller: _controller1,
        maxLines: 2,
        validator: ((value) {
          if (value!.isEmpty ||
              !(RegExp(
                      r'^[a-z A-Z]([\w]|-|[\.])*[@]{1}[a-z A-Z]{5,8}[\.]{1}[a-z A-Z]{2,3}$')
                  .hasMatch(value))) {
            return "Enter Correct Email";
          } else {
            return null;
          }
        }),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Name@gmail.com",
          prefixIcon: Icon(Icons.email, color: Colors.indigo[800]),
          labelText: "Email",
        ),
      ),
    );
  }

  Widget password() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return ("Enter Correct Password");
          } else {
            return null;
          }
        },
        controller: _controller2,
        obscureText: true,
        maxLines: 1,
        // autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: Icon(Icons.password, color: Colors.indigo[800]),
          labelText: "Password",
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => GoRouter.of(context).go('/'),
            icon: Icon(Icons.arrow_back)),
        title: Text('Login Page'),
        backgroundColor: Color(0xFF363f93),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white, Colors.white38])),
          child: Center(
            child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/aa.jpeg",
                        height: 200,
                        width: double.infinity,
                      ),
                      email(),
                      SizedBox(
                        height: 20,
                      ),
                      password(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FloatingActionButton(
                                child: Icon(Icons.east),
                                backgroundColor:
                                    Color.fromARGB(255, 58, 7, 139),
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    for (int i = 0;
                                        i < MoviesData.users.length;
                                        i++) {
                                      if (MoviesData.users[i][2]
                                                  .toString()
                                                  .toLowerCase() ==
                                              _controller1.text
                                                  .toString()
                                                  .toLowerCase() &&
                                          MoviesData.users[i][3]
                                                  .toString()
                                                  .toLowerCase() ==
                                              _controller2.text
                                                  .toString()
                                                  .toLowerCase()) {
                                        MoviesData.isLoggedIn = true;
                                      }
                                      ;
                                      print(i);
                                    }
                                    print(MoviesData.isLoggedIn);
                                    if (MoviesData.isLoggedIn) {
                                      var snackBar = SnackBar(
                                        elevation: 0,
                                        behavior: SnackBarBehavior.floating,
                                        backgroundColor: Colors.transparent,
                                        content: AwesomeSnackbarContent(
                                          color: Colors.green,
                                          title: 'Email',
                                          message: "${_controller1.value.text}",
                                          contentType: ContentType.failure,
                                        ),
                                      );

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  }
                                  //GoRouter.of(context).go('/userprofile');
                                  logIn();
                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  GoRouter.of(context).go('/signup');
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(
                              width: 90,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                    ])),
          ),
        ),
      ),
    );
  }

  Future logIn() async {
    try {
      UserCredential authusers =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _controller1.text,
        password: _controller2.text,
      );

      LoggedInUserData.userID = authusers.user!.uid;
      var docSnapshot = await FirebaseFirestore.instance.collection('users').doc(LoggedInUserData.userID).get();
      if (docSnapshot.exists) {
        Map<String, dynamic>? data = docSnapshot.data();
        LoggedInUserData.userID = data?['id'];
        LoggedInUserData.userName = data?['name'];
        LoggedInUserData.userPhoneNumber = data?['phone'];
        LoggedInUserData.userEmail = data?['email'];
        LoggedInUserData.userAddress = data?['address'];
      }

      GoRouter.of(context).go('/userprofile');
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}