// ignore_for_file: camel_case_types, file_names

import 'dart:async';
import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:flutter/material.dart';

import '../Ui/Widgets/AppSize_MediaQuery.dart';
import 'Sign_In_Screen/Sign_In.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Kcontainer(
              h: 200,
              w: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(image.flash_Screen_Img),
                // AssetImage(image.flash_Screen_Img),
              )),
            ),
            // SizedBox(height: 20),
            KsBox(
              h: Kh(context: context, value: 2),
            ),
            KsBox(
              h: Kh(context: context, value: 6),
              w: Kw(context: context, value: 12),
              child: const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
