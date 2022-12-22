import 'package:flutter/material.dart';
import 'package:MobileProject/AdamDescription.dart';
import 'package:MobileProject/MemoryDescription.dart';
import 'package:MobileProject/SmileDescription.dart';
import 'BlackAdam.dart';
import 'Cinema.dart';
import 'Films.dart';
import 'HomePage.dart';
import 'LeageueDescription.dart';
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


