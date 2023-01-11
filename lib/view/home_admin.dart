import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/PostsAdmin.dart';
import '../services/posts_admin_services.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});
  @override
  State<HomeAdmin> createState() => _AdminPageState();
}

class _AdminPageState extends State<HomeAdmin> {
  List<PostAdmin> posts = <PostAdmin>[];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetching data from the API
    getData();
    //printdata();
  }

  // printdata() async {
  //   printeddata = await PostsAdminService().getOrganizations();
  //   print(printeddata);
  // }

  getData() async {
    posts = await PostsAdminService().getOrganizations();
    //print(posts);
    if (posts.isNotEmpty) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All films page'),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                GoRouter.of(context).go('/users');
              },
              child: Text("view users"),
            ),
          ],
        ),
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(posts[index].imageThumbnailPath!)),
                title: Text(posts[index].name.toString()),
                //subtitle: Text(),
              );
            },
          ),
        ));
  }
}
