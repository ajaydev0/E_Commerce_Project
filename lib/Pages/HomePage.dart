// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, dead_code, prefer_adjacent_string_concatenation, avoid_unnecessary_containers
import 'package:demo_project/Pages/Exit_HomePage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Exit_DialogBox(context);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.red,
            title: Text("Home Page"),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
