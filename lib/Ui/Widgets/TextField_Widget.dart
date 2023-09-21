// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';

Widget KtextField(
    {onChanged,
    hintText = "Enter Anything",
    labelText = "Email or username",
    priFIxIcon = Icons.person,
    suFFixIcon,
    validation,
    controller,
    maxLength,
    maxLengthEnforcement,
    obscureText = true,
    autovalidateMode = AutovalidateMode.onUserInteraction}) {
  return TextFormField(
    onChanged: onChanged,
    obscureText: obscureText,
    maxLengthEnforcement: maxLengthEnforcement,
    maxLength: maxLength,
    controller: controller,
    validator: validation,
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
        prefixIcon: Icon(priFIxIcon),
        suffixIcon: Icon(suFFixIcon)),
  );
}
