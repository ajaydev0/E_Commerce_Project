// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:flutter/material.dart';

class Favorite_Page extends StatefulWidget {
  const Favorite_Page({super.key});

  @override
  State<Favorite_Page> createState() => _Favorite_PageState();
}

class _Favorite_PageState extends State<Favorite_Page> {
  int selectedIndex = 1;
  Kscale(int index) {
    if (selectedIndex == index) {
      return 1.0;
    } else {
      return 0.8;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(children: [
        KsBox(h: 40),
        KsBox(
            h: 200,
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                itemCount: 10,
                controller:
                    PageController(initialPage: 1, viewportFraction: 0.7),
                itemBuilder: ((context, index) {
                  double scale = Kscale(index);
                  return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    },
                    child: Kcontainer(
                      margin: EdgeInsets.all(5),
                      h: 150,
                      w: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(image.HomePage_product_Img1),
                        ),
                      ),
                    ),
                  );
                }))),
      ]),
    );
  }
}
