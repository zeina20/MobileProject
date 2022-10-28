import 'package:flutter/material.dart';

class CinemaPage1 extends StatelessWidget {
  const CinemaPage1({super.key});

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
             Stack(children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "assets/images/a.jpg"))),
                  padding: const EdgeInsets.all(8),
                ),
                Positioned(top: 50, left: 120,
                  child: Text(
                    "data",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ]),
            Divider(),
            Image.asset("assets/images/a.jpg"),
            Divider(),
            Image.asset("assets/images/a.jpg"),
            Divider(),
            Image.asset("assets/images/a.jpg"),
            Divider(),
            Image.asset("assets/images/a.jpg"),
            Divider(),
            Image.asset("Assets/Photos/panel-gd-300x150.jpg"),
            Divider(),
            Image.asset("Assets/Photos/panel-gd-300x150.jpg"),
          ],
        ),
      )),
    );
  }
}
