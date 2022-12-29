import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'firebase_options.dart';
import 'view/Cinema.dart';
import 'view/Login.dart';
import 'view/SignUp.dart';
import 'view/description.dart';
import 'view/detail.dart';
import 'view/home.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

class MyApp extends StatelessWidget {
  //*app routing
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => Homes(),
        routes: <GoRoute>[
          GoRoute(
              // path: 'Detail/:index',
              path: 'Detail',
              builder: (BuildContext context, GoRouterState state) =>
                  Detail() //index:state.params["index"]),
              ),
          GoRoute(
              // path: 'Detail/:index',
              path: 'signup',
              builder: (BuildContext context, GoRouterState state) =>
                  SignUp() //index:state.params["index"]),
              ),
          GoRoute(
              // path: 'Detail/:index',
              path: 'login',
              builder: (BuildContext context, GoRouterState state) =>
                  LoginPage() //index:state.params["index"]),
              ),
          GoRoute(
            // path: 'Detail/:index',
            path: 'description/:index',
            builder: (BuildContext context, GoRouterState state) =>
                Description(index: state.params["index"]),
          ),

          // GoRoute(
          //     path: 'home/:selectedIndex',
          //   name: 'home',
          //   builder: (context, state) => HomePage(
          //       selectedIndex: int.parse(state.params["selectedIndex"]!),

          // ),
          // ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 224, 224, 224),
        scaffoldBackgroundColor: Color(0xFFF1F1F1),
        splashColor: Color(0xFFF3A953),
        colorScheme: ColorScheme.light(
            primary: Color.fromARGB(255, 0, 0, 0),
            secondary: Color(0xFF007CD7)),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(MyApp());
}
