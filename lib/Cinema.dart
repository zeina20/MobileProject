import 'package:flutter/material.dart';


import 'Login.dart';
import 'SignUp.dart';

class CinemaPage1 extends StatelessWidget {
  const CinemaPage1({super.key});

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
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
          child: 
             Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/p90.jfif"))),
                  padding: const EdgeInsets.all(8),
                ),
                Positioned(top: 70, left: 145,
                  child: Text(
                    "Point 90",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                
              ]),
            ),
               Divider(),
              Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/center.jfif"))),
                  padding: const EdgeInsets.all(8),
                ),
                Positioned(top: 70, left: 125,
                  child: Text(
                    "City Center",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                
              ]),

          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
          //   Divider(),
          //   Image.asset("assets/images/a.jpg"),
            Divider(),
              Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/cairo.jfif"))),
                  padding: const EdgeInsets.all(8),
                ),
                Positioned(top: 70, left: 115,
                  child: Text(
                    "Cairo Festival ",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
              ),
                 ]),


              Divider(),
              Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/arabia.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
                Positioned(top: 70, left: 115,
                  child: Text(
                    "Mall Of Arabia",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                
              ]),
              
          ],
        ),
      )),
    );
  }
}
