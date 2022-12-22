import 'package:flutter/material.dart';
import 'package:MobileProject/Films.dart';
import 'package:MobileProject/model/movies_data.dart';


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
                color: Color(0xFF363f93),
              ),
              child: Text('Menu'),
            ),
            ),
            if(!MoviesData.isLoggedIn)
            ListTile(
              title: const Text('SignIn'),
              onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                        },
            ),
            if(!MoviesData.isLoggedIn)
            ListTile(
              title: const Text('SignUp'),
               onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                        },
            ),
            if(MoviesData.isLoggedIn)
            ListTile(
              title: const Text('Log out'),
               onTap: () {
                          MoviesData.isLoggedIn = false;
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CinemaPage1()));
                        },
            ),
          ],
        ),
      ),
      appBar: AppBar(backgroundColor: Color(0xFF363f93),),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FilmPage1()));
              },
          child: 
             Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/p90.jfif"))),
                ),
                Text("Point 90",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                
              ]),
            ),
              InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FilmPage1()));
              },
          child: Stack(
                alignment: Alignment.center,
                children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/center.jfif"))),
                ),
                Text(
                    "City Center",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                ),
                
              ]),),

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
           
              InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FilmPage1()));
              },
          child: Stack(
                alignment: Alignment.center,
                children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/cairo.jfif"))),
                ),
                Text(
                    "Cairo Festival ",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                 ]),),
              InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FilmPage1()));
              },
          child: Stack(alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/arabia.jpg"))),
                ),
                Text(
                    "Mall Of Arabia",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                
              ]),),
              
          ],
        ),
      )),
    );
  }
}
