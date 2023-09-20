// import 'package:demo_project/Pages/HomePage.dart';
// import 'package:demo_project/Pages/Sign_In_Page/Sign_In.dart';
// import 'package:demo_project/Pages/Sign_Up.dart';
import 'package:demo_project/Pages/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   // '/Splash_Screen' : (context) => Splash_Screen(),
      //   // '/Home_Screen': (context) => MyHomePage(),
      //   // '/Login_Screen': (context) => SignIn(),
      //   // '/SignUp_Screen': (context) => SignUp(),
      // },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash_Screen(),
    );
  }
}
