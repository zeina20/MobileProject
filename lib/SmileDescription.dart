import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';


class SmileDescription extends StatelessWidget {
  const SmileDescription({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 85,
             child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ),
            ListTile(
              title: const Text('SignIn'),
              onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                        },
            ),
            ListTile(
              title: const Text('SignUp'),
               onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                        },
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/smile.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),

                
                
              ]),
              Divider(),
              Positioned(top: 150, left: 115,
                  child: Text(
                    "After witnessing a bizarre, traumatic incident involving a patient, Dr. Rose Cotter starts experiencing frightening occurrences that she can't explain. Rose must confront her troubling past in order to survive and escape her horrifying new reality.", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Director: Parker Finn", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                   Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Stars: Kyle Gallner ,Jessie T. Usher, Sosie Bacon", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Writer: Parker Finn ", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
               ],
        ),
      )),
    );
  }
}