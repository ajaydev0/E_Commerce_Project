// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import '../../../../Ui/Widgets/Container_Widget.dart';

Widget Indigator({color}) {
  return Kcontainer(
    h: 10,
    w: 10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
    ),
  );
}
