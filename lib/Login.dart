import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:MobileProject/main.dart';
import 'package:MobileProject/model/movies_data.dart';
import 'Cinema.dart';
import 'HomePage.dart';
import 'SignUp.dart';

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
          if (value!.isEmpty ||
              !(RegExp(r'^[a-z A-Z]{1}[\w]*$')).hasMatch(value)) {
            return ("Enter Correct Password");
          } else {
            return null;
          }
        },
        controller: _controller2,
        maxLines: 2,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          onPressed: (){

            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: 
              (_)=>CinemaPage1()),
              (route)=>false);
          },
          icon:Icon(Icons.arrow_back)),   
           
          
        
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
                                    for(int i = 0 ; i < MoviesData.users.length ; i++){
                                     if(MoviesData.users[i][2].toString().toLowerCase() == _controller1.text.toString().toLowerCase() && MoviesData.users[i][3].toString().toLowerCase() == _controller2.text.toString().toLowerCase()){
                                      MoviesData.isLoggedIn = true;
                                    }
                                    print(i);
                                    }
                                    print(MoviesData.isLoggedIn);
                                    if(MoviesData.isLoggedIn){
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CinemaPage1()));
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
                                  NavigateToSignUp(context);
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

  void NavigateToSignUp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SignUp()));
  }
}
