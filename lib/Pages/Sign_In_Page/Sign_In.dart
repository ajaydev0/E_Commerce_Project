// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, dead_code, prefer_adjacent_string_concatenation, avoid_unnecessary_containers, camel_case_types, non_constant_identifier_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:flutter/material.dart';
import '../../User_Data.dart';
import '../Sign_Up.dart';
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
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image:
                          //  NetworkImage(image.flash_Screen_Img),
                          AssetImage(image.flash_Screen_Img),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Sign in",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
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

                  // maxLength: 10,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  decoration: InputDecoration(
                    prefixIconColor: appcolors.mainColor,
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.green)),

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

                    hintText: "test@gmail.com",
                    labelText: "Email or username",
                    prefixIcon: Icon(Icons.person),
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
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
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
                  decoration: InputDecoration(
                    suffixIconColor: appcolors.mainColor,
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
                    hintText: "@1234",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
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
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 40,
                  width: 150,
                  child: ElevatedButton(
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
                    child: const Text(
                      "Sign In",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 25,
                  width: 170,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appcolors.grey, // Background color
                      ),
                      onPressed: () {
                        // Get.back();
                        // Get.to(() => Forgot());
                      },
                      child: const Text(
                        "Forgotten password?",
                        style: TextStyle(fontSize: 14, color: appcolors.black),
                      )),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 25,
                  width: 240,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appcolors.grey, // Background color
                      ),
                      onPressed: () {
                        // Get.back();
                        // Get.to(() => SignUp());
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: const Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(fontSize: 14, color: appcolors.black),
                      )),
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
