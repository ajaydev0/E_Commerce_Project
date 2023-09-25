// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import '../../User_Data.dart';

error_DialogBox(context, [emailInput, passInput]) {
  return showDialog(
    // barrierDismissible: false,
    context: context,
    builder: (context) {
      return Dialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        // Ternary Logic
                        (emailInput == "" && passInput == "")
                            ? "Enter Email Or Password"
                            : emailInput == ""
                                ? "Enter Email"
                                : passInput == ""
                                    ? "Enter Password"
                                    : KData.userEmail == emailInput
                                        ? "Password Not Match"
                                        : KData.UserPass == passInput
                                            ? "Email Not Match"
                                            : "User Not Found",

                        // _InputEmail.text == ""
                        //     ? "Enter Email"
                        //     : _InputPass.text == ""
                        //         ? "Enter O"
                        //         : "Try Again",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    // width: 180,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.red, // button Background color
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Try Again",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  )
                ],
              ),
            ),
            const Positioned(
              top: -50,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  //Ekhane Rectangle Sixe Use
                  child: Icon(
                    Icons.dangerous,
                    color: Colors.red,
                    size: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
