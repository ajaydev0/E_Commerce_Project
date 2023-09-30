// ignore_for_file: prefer_const_constructors, camel_case_types, file_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Scaffold_Widget.dart';
import 'package:flutter/material.dart';

import '../../../Ui/Widgets/AppSize_MediaQuery.dart';
import '../../../Ui/Widgets/Container_Widget.dart';
import '../../../Ui/Widgets/Text_Widget.dart';

class Discover_Page extends StatefulWidget {
  const Discover_Page({super.key});

  @override
  State<Discover_Page> createState() => _Discover_PageState();
}

class _Discover_PageState extends State<Discover_Page> {
  @override
  Widget build(BuildContext context) {
    return KScaffold(
      extendBody: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Kcontainer(
            h: 190,
            decoration: BoxDecoration(
              color: appcolors.blue400,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),
          Ktext(
            text: "Working...",
            size: 40,
          ),
          Kcontainer(
            h: Kh(context: context, value: 52),
            decoration: BoxDecoration(
              color: appcolors.grey200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
