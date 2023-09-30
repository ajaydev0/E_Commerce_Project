// ignore_for_file: prefer_const_constructors, camel_case_types, file_names
import 'package:demo_project/Ui/Ui_Content.dart';
import 'package:demo_project/Ui/Widgets/Scaffold_Widget.dart';
import 'package:demo_project/Ui/Widgets/SizeBox_Widget.dart';
import 'package:flutter/material.dart';
import '../../../Ui/Widgets/AppSize_MediaQuery.dart';
import '../../../Ui/Widgets/Container_Widget.dart';
import '../../../Ui/Widgets/Text_Widget.dart';
import 'Data_Cart.dart';

class Cart_Page extends StatefulWidget {
  const Cart_Page({super.key});

  @override
  State<Cart_Page> createState() => _Cart_PageState();
}

class _Cart_PageState extends State<Cart_Page> {
  //remove cart item quantity
  void removeFromCart(CartItem item) {
    if (item.quantity > 1) {
      setState(() {
        item.quantity--;
      });
    } else {
      setState(() {
        cartItems.remove(item);
        //Snack Message Show
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: Duration(seconds: 1),
            content: Text('Removed Cart item'),
          ),
        );
      });
    }
  }

  //adjust Quantity
  void adjustQuantity(CartItem item, int newQuantity) {
    if (newQuantity >= 1) {
      setState(() {
        item.quantity = newQuantity;
      });
    } else {
      // newQuantity == 1;
      removeFromCart(item);
    }
  }

  //
  @override
  Widget build(BuildContext context) {
    double total = 0;
    for (CartItem item in cartItems) {
      total += item.product.price * item.quantity;
    }

    return KScaffold(
      extendBody: true,
      body: Center(
        child: Kcontainer(
          h: Kh(context: context, value: 100),
          w: Kw(context: context, value: 100),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Kcontainer(
                    h: 190,
                    decoration: BoxDecoration(
                      color: appcolors.blue400,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Kcontainer(
                    h: Kh(context: context, value: 52),
                    decoration: BoxDecoration(
                      color: appcolors.grey200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ktext(
                        text: "My Cart",
                        size: 25,
                        weight: FontWeight.bold,
                        color: appcolors.white),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Kcontainer(
                    h: Kh(context: context, value: 75),
                    w: Kw(context: context, value: 90),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20))),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 110, right: 30),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Kcontainer(
                    h: 50,
                    w: 140,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: ElevatedButton(
                          onPressed: () {
                            print("Order Page");
                          },
                          child: Ktext(
                            text: "Order Now",
                            size: 20,
                          )),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 110,
                left: 35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ktext(
                      color: appcolors.halkablack,
                      text: "Total",
                      size: 16,
                    ),
                    KsBox(h: 0),
                    Ktext(
                        color: appcolors.halkablack,
                        text: "৳${total.toStringAsFixed(2)}",
                        // text: "৳ 0000.00",
                        size: 26,
                        weight: FontWeight.bold),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                // top: 110,
                // height: Kh(context: context, value: 62),
                // width: Kw(context: context, value: 100),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 35, right: 35, bottom: 60),
                  child: Kcontainer(
                    // color: Colors.red,
                    h: Kh(context: context, value: 62),
                    w: Kw(context: context, value: 100),
                    // h: 200,
                    // w: Kw(context: context, value: 70),
                    child: cartItems.isEmpty
                        ? Kcontainer(
                            child: Center(
                              child: Ktext(text: "No Item Added Yet", size: 25),
                            ),
                          )
                        : ListView.builder(
                            itemCount: cartItems.length,
                            itemBuilder: (context, index) {
                              final item = cartItems[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Dismissible(
                                  onDismissed: (direction) {
                                    removeFromCart(item);
                                    cartItems.remove(item);
                                    if (direction ==
                                        DismissDirection.startToEnd) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text('Removed Cart item'),
                                        ),
                                      );
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text('Removed Cart item'),
                                        ),
                                      );
                                    }
                                  },
                                  secondaryBackground: Container(
                                    color:
                                        const Color.fromARGB(255, 221, 15, 0),
                                    child: Icon(
                                      Icons.delete, color: Colors.white,
                                      // size: 40,
                                    ),
                                  ),
                                  key: ValueKey("amni"),
                                  background: Container(
                                    color:
                                        const Color.fromARGB(255, 221, 15, 0),
                                    child: Icon(
                                      Icons.delete, color: Colors.white,
                                      // size: 40,
                                    ),
                                  ),
                                  child: Kcontainer(
                                    h: 75,
                                    w: double.infinity,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(.2),
                                            blurRadius: 3.0,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Kcontainer(
                                            h: 55,
                                            w: 55,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(.3),
                                                    blurRadius: 5.0,
                                                    offset: Offset(0, 2),
                                                  ),
                                                ],
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage(
                                                        item.product.imgUrl)),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Positioned(
                                          top: 13,
                                          left: 75,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Ktext(
                                                  text: item.product.name,
                                                  weight: FontWeight.bold),
                                              Ktext(
                                                  text:
                                                      "৳ ${item.product.price.toStringAsFixed(2)}"),
                                              Ktext(
                                                  text: "Delevery Free",
                                                  size: 10),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                            bottom: 20,
                                            right: 15,
                                            child: Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    print("Remove");
                                                    adjustQuantity(item,
                                                        item.quantity - 1);
                                                    // removeFromCart(item);
                                                  },
                                                  child: Kcontainer(
                                                      h: 30,
                                                      w: 30,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    .3),
                                                            blurRadius: 5.0,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                        color: Colors.blue[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: Colors.white,
                                                        size: 17,
                                                      )),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: Ktext(
                                                      text: "${item.quantity}",
                                                      size: 20,
                                                      weight: FontWeight.bold),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    print("Add");
                                                    adjustQuantity(item,
                                                        item.quantity + 1);
                                                  },
                                                  child: Kcontainer(
                                                      h: 30,
                                                      w: 30,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    .3),
                                                            blurRadius: 5.0,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                        color: Colors.blue[400],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                      ),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                        size: 17,
                                                      )),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
