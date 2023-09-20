// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, dead_code, prefer_adjacent_string_concatenation, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //Key
  final _FromKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();

  TextEditingController userPhoneController = TextEditingController();

  TextEditingController userEmailController = TextEditingController();

  TextEditingController userPasswordController = TextEditingController();

  bool passwordVisible = true;

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
                  height: 60,
                ),
                Center(
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/9858/9858082.png"))),
                  ),
                ),

                const Text(
                  "Sign Up",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 45,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),
                const Center(
                    child: Text(
                  "It's quick and easy.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),

                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: userNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  maxLength: 10,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "First Name",
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),

                // Divider(),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: userPhoneController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  maxLength: 6,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Phone Number",
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: userEmailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  maxLength: 22,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "E-mail",
                    labelText: "E-mail",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: userPasswordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  maxLength: 8,
                  // maxLengthEnforcement: MaxLengthEnforcement.none,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
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
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                ),

                const SizedBox(
                  height: 20,
                ),

                SizedBox(
                  height: 25,
                  width: 240,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100], // Background color
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        // Get.back();
                      },
                      child: const Text(
                        "Already have an account? Log In",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                ),

                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
