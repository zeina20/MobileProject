import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';


class BlackAdamDescription extends StatelessWidget {
  const BlackAdamDescription({super.key});


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
                              "assets/images/black.jfif"))),
                  padding: const EdgeInsets.all(8),
                ),

                
                
              ]),
              Divider(),
              Positioned(top: 150, left: 115,
                  child: Text(
                    "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods - and imprisoned just as quickly - Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Director: Jaume Collet-Serra", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                   Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Writers: Adam SztykielRory HainesSohrab Noshirvani", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Stars: Dwayne JohnsonAldis HodgePierce Brosnan ", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
               ],
        ),
      )),
    );
  }
}