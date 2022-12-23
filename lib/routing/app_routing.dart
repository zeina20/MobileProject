import 'package:MobileProject/view/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/Cinema.dart';
import '../view/Films.dart';
import '../view/Login.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => CinemaPage1(),
      
      
    ),
       
    GoRoute(
      path: '/loginpage',
      builder: (BuildContext context, GoRouterState state) => LoginPage(),
      
      
    ),
    GoRoute(
      path: '/signup',
      builder: (BuildContext context, GoRouterState state) => SignUp(),
      
      
    ),
    
  ]
);