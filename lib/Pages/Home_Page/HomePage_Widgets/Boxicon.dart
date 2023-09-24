import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';

import '../../../Ui/Widgets/Container_Widget.dart';
import '../../../Ui/Widgets/SizeBox_Widget.dart';
import '../../../Ui/Widgets/Text_Widget.dart';

Widget BoxIcon({
  required BuildContext context,
  icon,
  text,
}) {
  var AppWidth = (MediaQuery.of(context).size.width) / 100;
  var AppHeight = (MediaQuery.of(context).size.height) / 100;
  return Column(
    children: [
      Kcontainer(
        h: 50,
        w: AppWidth * 14,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: appcolors.blue300),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 2, right: 2),
          child: Icon(icon, color: appcolors.black),
        ),
      ),
      KsBox(
        h: 5,
      ),
      Ktext(
        text: text,
        weight: FontWeight.bold,
        size: 15,
      ),
    ],
  );
}
