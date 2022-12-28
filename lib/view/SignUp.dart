import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var _formKey1 = GlobalKey<FormState>();

  var _controller3 = TextEditingController();

  var _controller4 = TextEditingController();
  var _controller5 = TextEditingController();
  var _controller6 = TextEditingController();
  Widget Name() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: _controller3,
        validator: ((value) {
          if (value!.isEmpty || !RegExp(r'^[\w]+$').hasMatch(value)) {
            return "Enter your name correctly";
          } else
            return null;
        }),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Name",
          hintText: "Name",
        ),
      ),
    );

  }

  Widget Address() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: _controller3,
        validator: ((value) {
          if (value!.isEmpty || !RegExp(r'^[\w]+$').hasMatch(value)) {
            return "Enter your name correctly";
          } else
            return null;
        }),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Adress",
          hintText: "Adress",
        ),
      ),
    );
  }
  Widget email() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Container(
          child: TextFormField(
        controller: _controller4,
        validator: ((value) {
          if (value!.isEmpty ||
              !RegExp(r'^[a-z A-Z]([\w]|-|[\.])*[@]{1}[a-z A-Z]{5,8}[\.]{1}[a-z A-Z]{2,3}$')
                  .hasMatch(value)) {
            return "Enter your email correctly";
          } else
            return null;
        }),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Email",
          hintText: "email@gmail.com",
        ),
      )),
    );
  }

  Widget password() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty ||
              !(RegExp(r'^[a-z A-Z]{1}[\w]*$')).hasMatch(value)) {
            return ("Enter Correct Password");
          } else {
            return null;
          }
        },
        controller: _controller5,
        maxLines: 1,
        // autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
          hintText: "Password",
          labelText: "Password",
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }

   Widget PhoneNumber() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: _controller6,
        validator: ((value) {
          if (value!.isEmpty || !RegExp(r'^[\d]{11}$').hasMatch(value)) {
            return "please enter your number correctly";
          } else
            return null;
        }),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Phone Number",
          hintText: "Enter Your Number Here",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff363f93), Colors.cyanAccent])),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey1,
            child: Column(children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  FloatingActionButton(
                    onPressed: () =>
                      GoRouter.of(context).go('/'),
                    
                    child: Icon(Icons.west),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Create Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              Name(),
              SizedBox(
                height: 30,
              ),
               Address(),
              SizedBox(
                height: 30,
              ),
              email(),
              SizedBox(
                height: 30,
              ),
              password(),
              SizedBox(
                height: 30,
              ),
              PhoneNumber(),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () =>
                          GoRouter.of(context).go('/login'),
                        
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                    SizedBox(
                      width: 150,
                    ),
                    FloatingActionButton(
                        child: Icon(Icons.east),
                        backgroundColor: Colors.black45,
                        onPressed: () {
                          if (_formKey1.currentState!.validate()) {
                            SnackBar snackbar = SnackBar(
                                content: Text(
                                    "Name ${_controller3.value.text} \n email ${_controller4.value.text}"));

                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          }
                        }),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
