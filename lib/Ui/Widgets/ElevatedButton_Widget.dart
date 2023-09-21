import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:flutter/material.dart';

//ElevatedButtonText
Widget KeleButtonText(
    {required text,
    h,
    w,
    required onPressed,
    clipBehavior = Clip.none,
    tSize,
    tColor,
    tWeight,
    backgroundColor = Colors.blue}) {
  return KsBox(
    h: h,
    w: w,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Background color
        ),
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: tSize, color: tColor, fontWeight: tWeight),
        )),
  );
}

//ElevatedButtonIcon
Widget KeleButtonIcon({
  required icon,
  h,
  w,
  required onPressed,
  isize,
  icolor,
  backgroundColor = Colors.blue,
  clipBehavior = Clip.none,
}) {
  return KsBox(
    h: h,
    w: w,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Background color
        ),
        clipBehavior: clipBehavior,
        onPressed: onPressed,
        child: Icon(
          icon,
          size: isize,
          color: icolor,
        )),
  );
}
