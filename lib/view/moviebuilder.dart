// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class moviebuilder extends StatelessWidget {
  final title;
  final image;
  final rating;
  final index;

  const moviebuilder(
      {super.key, this.title, this.image, this.rating, this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // inkwell is used like gesture detector to detect if any action is applied to it but with a little animation
    return InkWell(
      child: Row(
        children: [
          Container(
            // setting width = the screen width
            // setting height = the screen height
            width: size.width,
            height: size.height,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                // movie cover positioning to fit the whole screen
                Positioned(
                  left: -size.width / 3,
                  right: -size.width / 3,
                  child: Image.asset('$image'),
                ),
                // basic color
                Container(
                  color: Color(0x66000000),
                ),
                // // the gradient color
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          // black.withOpacity(.9),
                          Color(0x4D000000),
                          Color(0xF2000000)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.5, 0.9]),
                  ),
                ),
                SafeArea(
                  // column that contains the movie info
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // movie cover
                      GestureDetector(
                        child: Container(
                          width: 200,
                          height: 250,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            '$image',
                            fit: BoxFit.cover,
                          ),
                        ),
                        onTap: () => GoRouter.of(context).go('/description/$index'),
                      ),
                      // movie title
                      SizedBox(
                        height: 8,
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 1.15,
                            child: Center(
                              child: Text(
                                '$rating',
                                style: GoogleFonts.righteous(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 1.15,
                            child: Center(
                              child: Text(
                                '$title',
                                style: GoogleFonts.righteous(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // book your ticket button
                      ElevatedButton.icon(
                          label: Text(
                            'Book your Ticket',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF05454)),
                          icon: Icon(
                            Icons.book,
                            size: 24,
                            color: Colors.white,
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      onTap: () {
        // GoRouter.of(context).go('/Detail/$index');
        GoRouter.of(context).go('/');
      },
    );
  }
}
