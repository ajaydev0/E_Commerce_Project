// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, dead_code, prefer_adjacent_string_concatenation, avoid_unnecessary_containers
import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
import 'package:demo_project/Ui/Widgets/ElevatedButton_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:demo_project/Ui/Widgets/TextField_Widget.dart';
import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_project/Ui/Ui_Content.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //Key
  final _FromKey = GlobalKey<FormState>();
  static TextEditingController userNameController = TextEditingController();
  static TextEditingController userPhoneController = TextEditingController();
  static TextEditingController userEmailController = TextEditingController();
  static TextEditingController userPasswordController = TextEditingController();
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Kcontainer(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: _FromKey,
            child: Column(
              children: [
                KsBox(h: 60),
                Center(
                  child: Kcontainer(
                    h: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image:
                          //  NetworkImage(image.flash_Screen_Img),
                          AssetImage(image.flash_Screen_Img),
                    )),
                  ),
                ),
                Ktext(
                  text: "Sign Up",
                  textAlign: TextAlign.right,
                  size: 45,
                  color: appcolors.black,
                ),
                KsBox(h: 4),
                Center(
                  child: Ktext(
                      text: "It's quick and easy.",
                      size: 16,
                      color: Colors.grey),
                ),
                KsBox(h: 10),
                KtextField(
                  controller: userNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "First Name",
                  labelText: "First Name",
                  prefixIcon: Icons.person,
                  // maxLength: 10,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                ),
                // Divider(),
                KsBox(h: 10),
                // KtextField(
                //   controller: userPhoneController,
                //   autovalidateMode: AutovalidateMode.onUserInteraction,
                //   hintText: "Phone Number",
                //   labelText: "Phone Number",
                //   prefixIcon: Icons.phone,
                //   // maxLength: 6,
                //   // maxLengthEnforcement: MaxLengthEnforcement.none,
                // ),
                // KsBox(h: 10),
                KtextField(
                  controller: userEmailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "E-mail",
                  labelText: "E-mail",
                  prefixIcon: Icons.email,
                  // maxLength: 22,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                ),
                KsBox(h: 10),
                KtextField(
                  controller: userPasswordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icons.password,
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  maxLength: 8,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  obscureText: passwordVisible,
                ),
                KsBox(h: 5),
                KsBox(
                  h: 40,
                  w: 150,
                  child: KeleButtonText(
                    onPressed: () {
                      // _FormKey.currentState?.validate();
                      // var userName = userNameController.text.trim();
                      // var userPhone = userPhoneController.text.trim();
                      // var userEmail = userEmailController.text.trim();
                      // var userPassword = userPasswordController.text.trim();

                      // Firebase.instance
                      //     .createUserWithEmailAndPassword(
                      //         email: userEmail, password: userPassword)
                      //     .then((Value) => {
                      //           print("User Created"),
                      //         });
                    },
                    text: "Sign Up",
                    tSize: 18,
                    tWeight: FontWeight.bold,
                  ),
                ),
                KsBox(h: 20),
                KsBox(
                  h: 25,
                  w: 240,
                  child: KeleButtonText(
                      onPressed: () {
                        Navigator.pop(context);
                        // Get.back();
                      },
                      text: "Already have an account? Log In",
                      tSize: 14,
                      tColor: appcolors.black,
                      backgroundColor: appcolors.grey),
                ),
                KsBox(h: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
