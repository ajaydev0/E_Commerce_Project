// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'Screens/Pages/Nav_Page.dart';
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (_) => MyApp(),
//   ));
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
