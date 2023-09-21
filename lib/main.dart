// import 'package:demo_project/Pages/HomePage.dart';
// import 'package:demo_project/Pages/Sign_In_Page/Sign_In.dart';
// import 'package:demo_project/Pages/Sign_Up.dart';
import 'package:demo_project/Pages/Splash_Screen.dart';
import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

// void main() {
//   runApp(DevicePreview(
//     builder: (_) => MyApp(),
//   ));
// }

void main() {
  runApp( MyApp());
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
      home: const Splash_Screen(),
    );
  }
}
