// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, file_names

import 'package:demo_project/Screens/Pages/Home_Page/Favorite_Page/Favorite.dart';
import 'package:flutter/material.dart';

import '../Home_Screen/HomePage.dart';

class Nav_Page extends StatefulWidget {
  Nav_Page({super.key});

  @override
  State<Nav_Page> createState() => _Nav_PageState();
}

class _Nav_PageState extends State<Nav_Page> {
  int selectIndex = 0;

  List pages = [
    MyHomePage(),
    Favorite_Page(),
    Container(color: Colors.amber),
    Container(color: Colors.blue),
    Container(color: Colors.pink),
  ];

  changeIndex(index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectIndex],
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomAppBar(
            height: 65,
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      changeIndex(0);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          selectIndex == 0 ? Icons.home : Icons.home_outlined,
                          color:
                              selectIndex == 0 ? Colors.blue : Colors.grey[600],
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 11,
                              color: selectIndex == 0
                                  ? Colors.blue
                                  : Colors.grey[600]),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      changeIndex(1);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          selectIndex == 1
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color:
                              selectIndex == 1 ? Colors.blue : Colors.grey[600],
                        ),
                        Text(
                          "Favorite",
                          style: TextStyle(
                              fontSize: 11,
                              color: selectIndex == 1
                                  ? Colors.blue
                                  : Colors.grey[600]),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      changeIndex(2);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          selectIndex == 2
                              ? Icons.shopping_cart
                              : Icons.shopping_cart_outlined,
                          color:
                              selectIndex == 2 ? Colors.blue : Colors.grey[600],
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(
                              fontSize: 11,
                              color: selectIndex == 2
                                  ? Colors.blue
                                  : Colors.grey[600]),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      changeIndex(3);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          selectIndex == 3
                              ? Icons.message
                              : Icons.message_outlined,
                          color:
                              selectIndex == 3 ? Colors.blue : Colors.grey[600],
                        ),
                        Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 11,
                              color: selectIndex == 3
                                  ? Colors.blue
                                  : Colors.grey[600]),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      changeIndex(4);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          selectIndex == 4
                              ? Icons.person
                              : Icons.person_outlined,
                          color:
                              selectIndex == 4 ? Colors.blue : Colors.grey[600],
                        ),
                        Text(
                          "Person",
                          style: TextStyle(
                              fontSize: 11,
                              color: selectIndex == 4
                                  ? Colors.blue
                                  : Colors.grey[600]),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
