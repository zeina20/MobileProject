import 'package:flutter/material.dart';

import '../model/profilemodel.dart';
import '../services/profileServices.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(child: const Text('Profile')),
      ),
      body: StreamBuilder<List<Profile>>(
        stream: readProfile(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final allProfiles = snapshot.data!;
            return Container(
              color: Color.fromARGB(232, 249, 249, 249),
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                     child:Column(
                        children: [
                          Center(
                            child: Text('Name: '),
                            ),
                              Text(allProfiles[index].name),

                          Center(
                            child: Text('Email: '),
                            ),
                              Text(allProfiles[index].email),

                           Center(
                             child: Text('Mobile: '),
                          ),
                          Text(allProfiles[index].mobile),
                        ],
                      )
                  
                  );
 
                },
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
    ),
  );
  }
}