import 'package:flutter/material.dart';

import 'Login.dart';

class FilmPage1 extends StatelessWidget {
  const FilmPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
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
              child: Stack(children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/film1.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
              ]),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "The Adam Project",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Genre: Fantasy",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0), fontSize: 15),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Stack(children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/film2.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
              ]),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Memory",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Genre: Action",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0), fontSize: 15),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Stack(children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/film3.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
              ]),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Black Adam",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Genre: SuperHero , Action",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0), fontSize: 15),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Stack(children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/film4.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
              ]),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Smile",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Genre: Horror",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0), fontSize: 15),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: Stack(children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/film5.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
              ]),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "League Of Super Pets",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 110,
              child: Text(
                "Genre: Animation",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 3, 0), fontSize: 15),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
