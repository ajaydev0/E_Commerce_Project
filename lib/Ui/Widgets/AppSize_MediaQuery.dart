// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

Kh({required BuildContext context, required double value}) {
  var maxHeight = MediaQuery.of(context).size.height / 100;
  return maxHeight * value;
}

Kw({required BuildContext context, required double value}) {
  var maxWidth = MediaQuery.of(context).size.width / 100;
  return maxWidth * value;
}
