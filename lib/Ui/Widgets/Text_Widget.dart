import 'package:flutter/material.dart';

Widget KText(
    {required text, color, size, weight, backgroundColor, wordSpacing}) {
  return Text(
    text,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        backgroundColor: backgroundColor,
        wordSpacing: wordSpacing),
  );
}
