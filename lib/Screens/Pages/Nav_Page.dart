// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, prefer_const_constructors_in_immutables, file_names
import 'package:demo_project/Screens/Pages/Cart_Page/Cart_Page.dart';
import 'package:demo_project/Screens/Pages/Discover_Page/Discover_Page.dart';
import 'package:demo_project/Screens/Pages/Profile_Page/Profile_Page.dart';
import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';
import 'Favorite_Page/Favorite.dart';
import 'Home_Page/HomePage.dart';

class Nav_Page extends StatefulWidget {
  const Nav_Page({super.key});

  @override
  State<Nav_Page> createState() => _Nav_PageState();
}

class _Nav_PageState extends State<Nav_Page> {
  int selectIndex = 0;

  List pages = [
    MyHomePage(),
    Discover_Page(),
    Cart_Page(),
    Favorite_Page(),
    Profile_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      extendBody: true,
      bottomNavigationBar: SizedBox(
        height: 65,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: BottomNavigationBar(
            //  height: 65,
            selectedLabelStyle: TextStyle(
              fontSize: 11,
            ),
            unselectedLabelStyle: TextStyle(
              color: appcolors.grey600,
              fontSize: 11,
            ),
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  selectIndex == 0 ? Icons.home : Icons.home_outlined,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  selectIndex == 1
                      ? Icons.shopping_bag
                      : Icons.shopping_bag_outlined,
                ),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  selectIndex == 2
                      ? Icons.shopping_cart
                      : Icons.shopping_cart_outlined,
                ),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  selectIndex == 3 ? Icons.favorite : Icons.favorite_border,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  selectIndex == 4 ? Icons.person : Icons.person_outlined,
                ),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
