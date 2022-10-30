import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';


class AdamDescription extends StatelessWidget {
  const AdamDescription({super.key});

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
                              "assets/images/adam.png"))),
                  padding: const EdgeInsets.all(8),
                ),

                
                
              ]),

Divider(),
              Positioned(top: 150, left: 115,
                  child: Text(
                    " After accidentally crash landing in 2022 timetraveling fighter pilot Adam Reed teams up with his 12 year old self for a mission to save the future.", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 40,
                  child: Text(
                    " Director: Shawn Levy", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Writers: Jonathan TropperT.S. NowlinJennifer Flackett", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Stars: Ryan ReynoldsWalker  ScobellMark Ruffalo", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                 Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Stars: Ryan ReynoldsWalker  ScobellMark Ruffalo", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
               ],
        ),
      )),
    );
  }
}