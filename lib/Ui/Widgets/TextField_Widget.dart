// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';

Widget KtextField(
    {onChanged,
    hintText = "Enter Anything",
    labelText = "Email or username",
    prefixIcon = Icons.person,
    suffixIcon,
    validator,
    controller,
    maxLength,
    maxLengthEnforcement,
    obscureText = false,
    autovalidateMode = AutovalidateMode.onUserInteraction,
    prefixIconSize}) {
  return TextFormField(
    onChanged: onChanged,
    obscureText: obscureText,
    maxLengthEnforcement: maxLengthEnforcement,
    maxLength: maxLength,
    controller: controller,
    validator: validator,
    autovalidateMode: autovalidateMode,
    decoration: InputDecoration(
      prefixIconColor: appcolors.mainColor,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          borderSide: BorderSide(color: appcolors.mainColor)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      hintText: hintText,
      labelText: labelText,
      prefixIcon: Icon(
        prefixIcon,
        size: prefixIconSize,
      ),
      suffixIcon: suffixIcon,
    ),
  );
}
