// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/AppSize_MediaQuery.dart';
import 'package:flutter/material.dart';

import '../../../../Ui/Widgets/Container_Widget.dart';
import '../../../../Ui/Widgets/ElevatedButton_Widget.dart';
import '../../../../Ui/Widgets/SizeBox_Widget.dart';
import '../../../../Ui/Widgets/Text_Widget.dart';

Widget products(
  BuildContext context,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Kcontainer(
        h: 30,
        w: Kw(context: context, value: 5),
        decoration: BoxDecoration(
          boxShadow: [
            //upor nic
            BoxShadow(
              blurRadius: 6.0,
              offset: Offset(0, 3),
            ),
            //left
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, 0),
            ),
            //right
            BoxShadow(
              color: Colors.white,
              offset: Offset(4, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 13,
              left: 10,
              child: Kcontainer(
                h: 100,
                w: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image.HomePage_product_Img1),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              top: 15,
              left: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ktext(
                    text: "Introducting",
                    size: 14,
                  ),
                  KsBox(
                    h: 5,
                  ),
                  Ktext(
                    text: "Air Max 2090",
                    size: 18,
                    weight: FontWeight.bold,
                  ),
                  KsBox(
                    h: 15,
                  ),
                  KeleButtonText(
                      text: "Buy Now",
                      onPressed: () {},
                      backgroundColor: appcolors.black),
                ],
              ),
            ),
          ],
        )),
  );
}
