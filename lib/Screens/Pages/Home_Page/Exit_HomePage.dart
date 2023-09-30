// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, file_names
import 'dart:io';
import 'package:flutter/material.dart';

Exit_DialogBox(
  context,
) {
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
              height: 190,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Exit App",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Do you Want to Exit an App?",
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        // width: 180,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.grey[400], // button Background color
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "No",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        // width: 180,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () => exit(0),
                            //     {
                            //   // () => exit(0);
                            // },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Yes",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -50,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  //Ekhane Rectangle Sixe Use
                  child: Icon(
                    Icons.question_mark,
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
