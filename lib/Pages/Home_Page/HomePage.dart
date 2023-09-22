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
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            // automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[300],
            elevation: 0,
            centerTitle: true,
            title: RichText(
                text: TextSpan(
              text: "App",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700]),
              children: [
                TextSpan(
                    text: " Name",
                    style: TextStyle(fontSize: 19, color: Colors.blue))
              ],
            )),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey[700],
                ),
              )
            ],
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.menu,
                color: Colors.grey[700],
              ),
            ),
          ),
          drawer: Drawer(),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 20, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.blue,
                        size: 25,
                      ),
                      // prefixIcon: Icon(
                      //   Icons.search,
                      //   color: Colors.black87,
                      //   size: 25,
                      // ),
                      hintText: "Serarch Here....",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
