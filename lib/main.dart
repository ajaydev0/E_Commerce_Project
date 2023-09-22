// ignore_for_file: prefer_const_constructors

import 'package:demo_project/Pages/Home_Page/HomePage.dart';
import 'package:demo_project/Pages/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'Pages/Home_Page/Nav_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Nav_Page(),
    );
  }
}
