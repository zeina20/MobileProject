// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/homedata.dart';

class Description extends StatelessWidget {
  final index;
  const Description({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var Mnumber = int.parse(index);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          // movie cover positioning to fit the whole screen
          Positioned(
            left: -size.width / 3,
            right: -size.width / 3,
            child: Image.asset('${movies[Mnumber].image}'),
          ),
          // basic color
          Container(
            color: Color(0x66000000),
          ),
          // the gradient color
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
              child: Container(
            margin: EdgeInsets.only(top: 200.0),
            width: MediaQuery.of(context).size.width,
            height: 727.0,
            decoration: BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    '${movies[Mnumber].title}',
                    style: GoogleFonts.righteous(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Row(
                    children: [
                      Text(
                        'Story',
                        style: GoogleFonts.roboto(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${movies[Mnumber].description}',
                          style: GoogleFonts.righteous(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
