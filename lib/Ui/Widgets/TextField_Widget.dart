// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

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
    prefixIconColor,
    hintTextColor,
    readOnly = false,
    maxLengthEnforcement,
    obscureText = false,
    autovalidateMode = AutovalidateMode.onUserInteraction,
    border,
    prefixIconSize}) {
  return TextFormField(
    readOnly: readOnly,
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
      hintStyle: TextStyle(color: hintTextColor),
      labelText: labelText,
      prefixIcon: Icon(
        prefixIcon,
        size: prefixIconSize,
        color: prefixIconColor,
      ),
      suffixIcon: suffixIcon,
    ),
  );
}

//2
Widget KtextField2(
    {onChanged,
    hintText = "Enter Anything",
    labelText = "Email or username",
    prefixIcon = Icons.person,
    suffixIcon,
    validator,
    controller,
    maxLength,
    prefixIconColor,
    hintTextColor,
    readOnly = false,
    maxLengthEnforcement,
    obscureText = false,
    autovalidateMode = AutovalidateMode.onUserInteraction,
    border,
    prefixIconSize}) {
  return TextFormField(
      readOnly: readOnly,
      decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          border: border,
          hintStyle: TextStyle(color: hintTextColor),
          hintText: hintText));
}
