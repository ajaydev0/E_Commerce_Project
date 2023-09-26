// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, dead_code, prefer_adjacent_string_concatenation, avoid_unnecessary_containers, camel_case_types, non_constant_identifier_names, file_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
import 'package:demo_project/Ui/Widgets/ElevatedButton_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:demo_project/Ui/Widgets/TextField_Widget.dart';
import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
import 'package:flutter/material.dart';

import '../../../User_Data.dart';
import '../Sign_Up_Screen/Sign_Up.dart';
import 'Error_DialogBox.dart';
import 'Success_DialogBox.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //Key
  final _FromKey = GlobalKey<FormState>();
  bool passwordVisible = true;
  final TextEditingController _InputEmail = TextEditingController();
  final TextEditingController _InputPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: _FromKey,
            child: Column(
              children: [
                KsBox(h: 100),
                Center(
                  child: Kcontainer(
                    h: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(image.flash_Screen_Img),
                      // AssetImage(image.flash_Screen_Img),
                    )),
                  ),
                ),
                KsBox(h: 20),
                Ktext(
                    text: "Sign in",
                    size: 45,
                    color: appcolors.black,
                    weight: FontWeight.bold,
                    textAlign: TextAlign.right),
                KsBox(h: 20),
                KtextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return " Required";
                    }
                    if (!value.trim().contains("@gmail.com")) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                  controller: _InputEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "test@gmail.com",
                  labelText: "Email or username",
                  prefixIcon: Icons.person,
                  suffixIcon: KData.userEmail == _InputEmail.text
                      ? Icon(
                          Icons.check,
                          color: appcolors.mainColor,
                        )
                      : _InputEmail.text != ""
                          ? GestureDetector(
                              onTap: () => _InputEmail.clear(),
                              child: Icon(
                                Icons.close,
                                color: appcolors.red,
                              ),
                            )
                          : null,
                ),
                KsBox(h: 10),
                KtextField(
                  onChanged: (value) {
                    setState(() {});
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " Requied";
                    }
                    if (!value.trim().contains("@")) {
                      return "Enter Strong Password (@)";
                    }
                    return null;
                  },
                  controller: _InputPass,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLength: 5,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  obscureText: passwordVisible,
                  hintText: "@1234",
                  labelText: "Password",
                  prefixIcon: Icons.password,
                  suffixIcon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 30,
                        child: IconButton(
                          icon: Icon(
                            KData.UserPass == _InputPass.text
                                ? Icons.check
                                // : _InputPass.text != ""
                                //     ? Icons.close
                                : null,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                KsBox(
                  h: 5,
                ),
                KeleButtonText(
                  h: 40,
                  w: 150,
                  text: "Sign In",
                  tSize: 18,
                  tWeight: FontWeight.bold,
                  onPressed: () {
                    //
                    // print(_InputEmail.text);

                    //Validation Key
                    if (_FromKey.currentState!.validate()) {
                      if (_InputEmail.text == KData.userEmail &&
                          KData.UserPass == _InputPass.text) {
                        Success_DialogBox(
                          context,
                        );
                      } else if (KData.userEmail != _InputEmail.text ||
                          KData.UserPass != _InputPass.text) {
                        error_DialogBox(
                            context, _InputEmail.text, _InputPass.text);
                      } else {
                        error_DialogBox(
                            context, _InputEmail.text, _InputPass.text);
                      }
                    } else if (_InputEmail.text == "" ||
                        _InputPass.text == "") {
                      error_DialogBox(
                          context, _InputEmail.text, _InputPass.text);
                      // error_DialogBox(context,);
                    }
                    // return null;
                    //Data Matching Logic
                    // (KData.userEmail == _InputEmail.text) &&
                    //         (KData.UserPass == _InputPass.text)
                    //     ?
                    //     : //Error Page
                  },
                ),
                KsBox(h: 30),
                KeleButtonText(
                    h: 25,
                    w: 170,
                    tSize: 14,
                    tColor: appcolors.black,
                    backgroundColor: appcolors.grey,
                    text: "Forgotten password?",
                    onPressed: () {}),
                KsBox(h: 14),
                KeleButtonText(
                    h: 25,
                    w: 240,
                    backgroundColor: appcolors.grey,
                    tSize: 14,
                    tColor: appcolors.black,
                    text: "Don't have an account? Sign Up",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    }),
                KsBox(h: 90),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
