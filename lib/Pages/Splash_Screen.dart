// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';

import 'Sign_In_Page/Sign_In.dart';

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
    var maxHeight = (MediaQuery.of(context).size.height / 100);
    var maxWidth = (MediaQuery.of(context).size.width / 100);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image:
                    // NetworkImage(image.flash_Screen_Img),
                    AssetImage(image.flash_Screen_Img),
              )),
            ),
            // SizedBox(height: 20),
            SizedBox(
              height: maxHeight * 2,
            ),
            SizedBox(
              height: maxHeight * 6,
              width: maxWidth * 12,
              child: const CircularProgressIndicator(),
            )
          ],
        ),
      ),
    );
  }
}
