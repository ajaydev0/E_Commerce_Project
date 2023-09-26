// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, avoid_print

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/AppSize_MediaQuery.dart';
import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
import 'package:flutter/material.dart';
import '../../../Ui/Widgets/TextField_Widget.dart';
import 'Exit_HomePage.dart';
import 'HomePage_Widgets/Boxicon_HomePage.dart';
import 'HomePage_Widgets/indigators.dart';
import 'HomePage_Widgets/product_PageView.dart';
import 'HomePage_Widgets/product_ListView.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeIndigator = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Exit_DialogBox(context);
        return Future.value(false);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Kcontainer(
                h: 260,
                color: appcolors.white,
                child: Stack(
                  children: [
                    Kcontainer(
                      h: 210,
                      decoration: BoxDecoration(
                          color: appcolors.blue400,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ktext(
                            text: "Rahid",
                            color: appcolors.white,
                            weight: FontWeight.bold,
                            size: 25,
                          ),
                          Row(
                            children: [
                              Kcontainer(
                                h: 50,
                                w: Kw(context: context, value: 40),
                                decoration: BoxDecoration(
                                    color: appcolors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 5,
                                  ),
                                  child: KtextField2(
                                    readOnly: true,
                                    prefixIcon: Icons.search,
                                    prefixIconColor: appcolors.black,
                                    border: InputBorder.none,
                                    hintText: "Search..",
                                    hintTextColor: appcolors.black,
                                  ),
                                ),
                              ),
                              KsBox(
                                w: Kw(context: context, value: 2),
                              ),
                              Kcontainer(
                                h: 50,
                                w: Kw(context: context, value: 14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: appcolors.white),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2, right: 2),
                                  child: Icon(Icons.add_a_photo_outlined),
                                ),
                              ),
                              KsBox(w: Kw(context: context, value: 5)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: Kw(context: context, value: 8),
                      right: Kw(context: context, value: 8),
                      child: Kcontainer(
                        h: 180,
                        // width: AppWidth * 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: PageView(
                          onPageChanged: (value) {
                            setState(() {
                              activeIndigator = value;
                              print(activeIndigator);
                            });
                          },
                          controller: _controller,
                          children: [
                            products(context),
                            products(context),
                            products(context),
                            products(context),
                          ],
                        ),
                      ),
                    ),

                    //Indigator
                    Positioned(
                      top: 230,
                      left: Kw(context: context, value: 45),
                      child: Row(
                        children: [
                          Indigator(
                              color: activeIndigator == 0
                                  ? appcolors.grey700
                                  : appcolors.grey400),
                          KsBox(
                            w: 5,
                          ),
                          Indigator(
                              color: activeIndigator == 1
                                  ? appcolors.grey700
                                  : appcolors.grey400),
                          KsBox(
                            w: 5,
                          ),
                          Indigator(
                              color: activeIndigator == 2
                                  ? appcolors.grey700
                                  : appcolors.grey400),
                          KsBox(
                            w: 5,
                          ),
                          Indigator(
                              color: activeIndigator == 3
                                  ? appcolors.grey700
                                  : appcolors.grey400),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              KsBox(
                h: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxIcon(
                      context: context, icon: Icons.discount, text: "Offers"),
                  BoxIcon(
                      context: context, icon: Icons.category, text: "Category"),
                  BoxIcon(
                      context: context, icon: Icons.compare, text: "Compare"),
                  BoxIcon(
                      context: context,
                      icon: Icons.new_releases,
                      text: "Reviews")
                ],
              ),
              KsBox(
                h: 5,
              ),
              Kcontainer(
                // height: 450,
                h: Kh(context: context, value: 48),
                decoration: BoxDecoration(
                    color: appcolors.grey200,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 30, right: 30, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ktext(
                            text: "New Collections",
                            size: 20,
                            weight: FontWeight.bold,
                          ),
                          Kcontainer(
                              h: 30,
                              w: 80,
                              decoration: BoxDecoration(
                                  color: appcolors.blue300,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Ktext(
                                  text: "View All",
                                  color: appcolors.black,
                                  weight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          productListView(),
                          productListView(),
                          productListView(),
                          productListView(),
                          productListView(),
                          productListView(),
                          KsBox(
                            w: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // KsBox(h: 80),
            ],
          ),
        ),
      ),
    );
  }
}
