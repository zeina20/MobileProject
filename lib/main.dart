import 'package:flutter/material.dart';
import 'Cinema.dart';
import 'HomePage.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CinemaPage1(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 230,
          width: width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            color: Color(0xFF363F93),
          ),
          child: Stack(
            children: [
              Positioned(
                  top: 82,
                  left: 0,
                  child: Container(
                    height: 90,
                    width: width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  )),
              Positioned(
                  top: 115,
                  left: 30,
                  child: Text(
                    "JOIN US NOW",
                    style: TextStyle(
                        color: Color(0xFF363F93),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ))
            ],
          ),
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  left: 20,
                  child: Container(
                    height: 180.0,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 4.0,
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(-10.0, 10.0),
                          )
                        ]),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 30,
                  child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                        height: 210,
                        width: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/Violet.jpg"),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(15)),
                      )),
                ),
                Positioned(
                  top: 55,
                  left: 180,
                  child: Container(
                    height: 150,
                    width: 210,
                    child: Column(children: [
                      Text(
                        "ONCE IN A WHILE",
                        style: TextStyle(
                            color: Color(0xFF363F93),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30),
                      Text("Don't miss it "),
                      SizedBox(height: 10),
                      Container(
                          padding: EdgeInsets.all(5),
                          child: Text("Enter the community NOW !"))
                    ]),
                  ),
                )
              ],
            )),
        Container(
          margin: EdgeInsets.only(top: 20, left: 50),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
            color: Color(0xFF363F93),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF363F93),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            onPressed: () {
              NavigateToNextScreen(context);
            },
            child: Text(
              "JOIN",
              style: TextStyle(
                fontSize: 20,
              ),
            ))
      ],
    ));
  }

  void NavigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
