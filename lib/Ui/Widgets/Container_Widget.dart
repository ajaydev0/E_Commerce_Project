import 'package:flutter/material.dart';

Widget KContainer({h, w, child, decoration, color, padding, margin}) {
  return Container(
    height: h,
    width: w,
    child: child,
    decoration: decoration,
    color: color,
    padding: padding,
    margin: margin,
  );
}
