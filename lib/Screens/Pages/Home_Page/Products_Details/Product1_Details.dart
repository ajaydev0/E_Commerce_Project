// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Scaffold_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
import 'package:flutter/material.dart';
import '../../../../Ui/Widgets/AppSize_MediaQuery.dart';
import '../../../../Ui/Widgets/Container_Widget.dart';
import '../Data_HomePage/Box1_Data_PageView.dart';

class ProductDetail1 extends StatefulWidget {
  const ProductDetail1({super.key});

  @override
  State<ProductDetail1> createState() => _ProductDetail1State();
}

class _ProductDetail1State extends State<ProductDetail1> {
  bool select2 = true;
  bool active = false;
  @override
  Widget build(
    BuildContext context,
  ) {
    return KScaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                height: 55,
                color: appcolors.blue400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          )),
                    ),
                  ],
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Kcontainer(
                        h: 135,
                        decoration: BoxDecoration(
                          color: appcolors.blue400,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Hero(
                          tag: ProductsList().itemData[0].name,
                          child: Kcontainer(
                            h: 280,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        ProductsList().itemData[0].imgUrl)),
                                color: appcolors.grey400,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 30, bottom: 15),
                            child: Kcontainer(
                              h: 33,
                              w: Kw(context: context, value: 14),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black.withOpacity(.1)),
                              child: Center(
                                child: Ktext(
                                    text: "1/4",
                                    color: appcolors.black,
                                    size: 19),
                              ),
                            ),
                          )),
                      Positioned(
                        top: 23,
                        right: 35,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              active = !active;
                            });
                          },
                          child: Kcontainer(
                            h: 50,
                            w: Kw(context: context, value: 14),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black.withOpacity(.1)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 2, right: 2),
                              child: Icon(
                                active
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                color: Colors.black.withOpacity(.7),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Ktext(
                //   text: "Working...",
                //   size: 40,
                // ),
                Kcontainer(
                    h: Kh(context: context, value: 52),
                    decoration: BoxDecoration(
                      color: appcolors.grey200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 25, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Ktext(
                                  text:
                                      "\$ ${ProductsList().itemData[0].price}",
                                  size: 28,
                                  weight: FontWeight.bold),
                              Kcontainer(
                                h: 50,
                                w: Kw(context: context, value: 14),
                                decoration: BoxDecoration(
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     color: Colors.black.withOpacity(.3),
                                    //     blurRadius: 10.0,
                                    //     offset: Offset(0, 3),
                                    //   ),
                                    // ],
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black.withOpacity(.1)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 2, right: 2),
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.black.withOpacity(.6),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 25, top: 52),
                          child: Ktext(
                              text: ProductsList().itemData[0].name,
                              size: 22,
                              weight: FontWeight.bold,
                              color: appcolors.halkablack),
                        ),
                        //Majkhan
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 25,
                            top: 100,
                          ),
                          child: Ktext(
                              text: "Select Size",
                              size: 16,
                              weight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 130,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              selectSizeBox(context, size: "6"),
                              selectSizeBox(
                                context,
                                size: "6.5",
                                onTap: () {
                                  setState(() {
                                    select2 = !select2;
                                    // print(select);
                                  });
                                },
                                backgroundColor: select2
                                    ? Colors.black.withOpacity(.8)
                                    : Colors.white,
                                tcolor: select2 ? Colors.white : Colors.black,
                              ),
                              selectSizeBox(context, size: "7"),
                              selectSizeBox(context, size: "7.5"),
                              selectSizeBox(context, size: "8"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 180,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              selectSizeBox(context, size: "8.5"),
                              selectSizeBox(context, size: "9"),
                              selectSizeBox(context, size: "9.5"),
                              selectSizeBox(context, size: "10"),
                              selectSizeBox(context, size: "10.5"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, right: 25, bottom: 105),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Ktext(
                                  text: "Description",
                                  size: 18,
                                  weight: FontWeight.bold),
                              KsBox(h: 3),
                              Ktext(
                                  text: "Failures are the pillar of Success.",
                                  size: 16),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 30,
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});

                                    // print("Add Data");
                                  },
                                  child: Kcontainer(
                                    h: 60,
                                    w: Kw(context: context, value: 40),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[400],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Ktext(
                                        text: "Add To Cart",
                                        size: 19,
                                        weight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Kcontainer(
                                    h: 60,
                                    w: Kw(context: context, value: 40),
                                    decoration: BoxDecoration(
                                      color: appcolors.blue400,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Ktext(
                                          text: "Buy Now",
                                          size: 20,
                                          weight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget selectSizeBox(context, {required size, backgroundColor, onTap, tcolor}) {
  return GestureDetector(
    onTap: onTap,
    child: Kcontainer(
      h: 40,
      w: Kw(context: context, value: 12),
      decoration: BoxDecoration(
        border: Border.all(color: appcolors.halkablack, width: 2),
        // color: Colors.amber,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Ktext(text: size, size: 16, color: tcolor),
      ),
    ),
  );
}
