// ignore_for_file: prefer_const_constructors, file_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';

import '../../../../Ui/Widgets/AppSize_MediaQuery.dart';
import '../../../../Ui/Widgets/Container_Widget.dart';
import '../../../../Ui/Widgets/SizeBox_Widget.dart';
import '../../../../Ui/Widgets/Text_Widget.dart';

Widget productListView({required BuildContext context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Stack(
          children: [
            Kcontainer(
              h: Kh(context: context, value: 30),
              w: Kw(context: context, value: 41),
              decoration: BoxDecoration(
                  color: appcolors.blue300,
                  borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Kcontainer(
                h: 110,
                w: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(image.HomePage_product_Img1)),
                    color: appcolors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            Positioned(
              left: 10,
              top: 130,
              child: Ktext(text: "Nike Air Max 2000", weight: FontWeight.bold),
            ),
            Positioned(
              left: 10,
              top: 155,
              child: Kcontainer(
                  h: 23,
                  w: 65,
                  decoration: BoxDecoration(
                      color: appcolors.grey300,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Ktext(
                        text: "6 Colors", color: appcolors.grey700, size: 13
                        // weight: FontWeight.bold,
                        ),
                  )),
            ),
            Positioned(
              left: 10,
              top: 185,
              child: Row(
                children: [
                  Ktext(
                    text: "\$500",
                    weight: FontWeight.bold,
                    size: 20,
                  ),
                  KsBox(w: 55),
                  Icon(
                    Icons.add,
                    size: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      KsBox(h: 20),
    ],
  );
}