import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/UsersModel.dart';
import '../services/admin_services.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});
  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users Page'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {
              GoRouter.of(context).go('/postadmin');
            },
            child: Text("films page"),
          ),
        ],
      ),
      body: StreamBuilder<List<UsersModel>>(
        stream: readUsers(),
        builder: (context, snapshot) {
          print(snapshot.hasData);
          if (snapshot.hasData) {
            final allUsers = snapshot.data!;
            print(allUsers);
            return ListView.builder(
              itemCount: allUsers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(allUsers[index].name),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(allUsers[index].email),
                      IconButton(
                          onPressed: () => delete(allUsers[index].id),
                          icon: const Icon(Icons.delete))
                    ],
                  ),
                );
              },
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
