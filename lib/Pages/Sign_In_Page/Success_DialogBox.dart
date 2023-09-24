// ignore_for_file: non_constant_identifier_names

import 'package:demo_project/Pages/Home_Page/Nav_Page.dart';
import 'package:flutter/material.dart';
import '../Home_Page/HomePage.dart';

Success_DialogBox(context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Dialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login Successful",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green,
                        size: 30,
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
                        backgroundColor: Colors.green, // Background color
                      ),
                      onPressed: () {
                        // Navigator.pop(context);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Nav_Page(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Go to HomeScreen",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.white,
                            // size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
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
                  //Ekhane Rectangle Size Use
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: Colors.green,
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
