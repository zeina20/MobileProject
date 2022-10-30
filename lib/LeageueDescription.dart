import 'package:flutter/material.dart';

import 'Login.dart';
import 'SignUp.dart';


class LeagueDiscription extends StatelessWidget {
  const LeagueDiscription({super.key});



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
                              "assets/images/league.jfif"))),
                  padding: const EdgeInsets.all(8),
                ),

                
                
              ]),
              Divider(),
              Positioned(top: 150, left: 115,
                  child: Text(
                    "Krypto the Super-Dog and Superman are inseparable best friends, sharing the same superpowers and fighting crime side by side in Metropolis. However, Krypto must master his own powers for a rescue mission when Superman is kidnapped.", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Directors: Jared SternSam J. Levine(co-director)", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                   Divider(),
                 Positioned(top: 150, left: 90,
                  child: Text(
                    " Writers: Jared SternJohn Whittington", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
                Divider(),
                 Positioned(top: 150, left: 115,
                  child: Text(
                    " Stars: Dwayne Johnson(voice)Kevin Hart(voice)Kate McKinnon(voice)", 
                    style: TextStyle(color: Colors.black, fontSize: 20 ),
                  ),
                ),
               ],
        ),
      )),
    );
  }
}