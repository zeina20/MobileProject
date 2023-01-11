import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/homedata.dart';
import 'homebuilder.dart';

class Homes extends StatelessWidget {
  const Homes({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFD6E4F0),
        appBar: AppBar(
          //* back button to notes
          title: Text(
            'Cinemas',
            style: TextStyle(color: Color(0xFF000000)),
          ),
          backgroundColor: Color.fromARGB(0, 230, 9, 9),
          elevation: 0,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                title: const Text('Sign Up'),
                onTap: () => GoRouter.of(context).go('/signup'),
              ),
              ListTile(
                title: const Text('Login'),
                onTap: () => GoRouter.of(context).go('/login'),
              ),
              ListTile(
                title: const Text('Admin'),
                onTap: () => GoRouter.of(context).go('/postadmin'),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: cinemas.length,
                  itemBuilder: (context, int index) {
                    return homebuilder(
                        index: index,
                        title: cinemas[index].title,
                        image: cinemas[index].image,
                        location: cinemas[index].location,
                        open: cinemas[index].open,
                        closes: cinemas[index].closes);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
