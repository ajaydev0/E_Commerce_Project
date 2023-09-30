// // ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last
// import 'package:demo_project/Screens/Pages/Home_Page/Data_HomePage/Box1_Data_PageView.dart';
// import 'package:demo_project/Ui/Widgets/AppSize_MediaQuery.dart';
// import 'package:demo_project/Ui/Widgets/Container_Widget.dart';
// import 'package:demo_project/Ui/Widgets/Text_Widget.dart';
// import 'package:flutter/material.dart';

// Widget CartItem2(Product ) {
//       double total = 0;
//        for (CartItem item in cartItems) {
//       total += item.product.price * item.quantity;
//     }
//   return ListView.builder(
//     itemCount: cartItems.length,
//     itemBuilder: (context, index) {
//       final item = cartItems[index];
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 10),
//         child: Dismissible(
//           secondaryBackground: Container(
//             color: const Color.fromARGB(255, 221, 15, 0),
//             child: Icon(
//               Icons.delete, color: Colors.white,
//               // size: 40,
//             ),
//           ),
//           key: ValueKey("abc"),
//           background: Container(
//             color: const Color.fromARGB(255, 221, 15, 0),
//             child: Icon(
//               Icons.delete, color: Colors.white,
//               // size: 40,
//             ),
//           ),
//           child: Kcontainer(
//             h: 75,
//             w: double.infinity,
//             decoration: BoxDecoration(boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(.2),
//                 blurRadius: 3.0,
//                 offset: Offset(0, 1),
//               ),
//             ], borderRadius: BorderRadius.circular(10), color: Colors.white),
//             child: Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, top: 10),
//                   child: Kcontainer(
//                     h: 55,
//                     w: 55,
//                     decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(.3),
//                             blurRadius: 5.0,
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: NetworkImage(item.product.imgUrl)),
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.blue),
//                   ),
//                 ),
//                 Positioned(
//                   top: 13,
//                   left: 75,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Ktext(text: item.product.name, weight: FontWeight.bold),
//                       Ktext(text: "৳ ${item.product.price}"),
//                       Ktext(text: "Delevery Free", size: 10),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                     bottom: 20,
//                     right: 15,
//                     child: Row(
//                       children: [
//                         InkWell(
//                           onTap: () {},
//                           child: Kcontainer(
//                               h: 30,
//                               w: 30,
//                               decoration: BoxDecoration(
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(.3),
//                                     blurRadius: 5.0,
//                                     offset: Offset(0, 3),
//                                   ),
//                                 ],
//                                 color: Colors.blue[400],
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                               child: Icon(
//                                 Icons.remove,
//                                 color: Colors.white,
//                                 size: 17,
//                               )),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           child: Ktext(
//                               text: "${item.quantity}",
//                               size: 20,
//                               weight: FontWeight.bold),
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: Kcontainer(
//                               h: 30,
//                               w: 30,
//                               decoration: BoxDecoration(
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(.3),
//                                     blurRadius: 5.0,
//                                     offset: Offset(0, 3),
//                                   ),
//                                 ],
//                                 color: Colors.blue[400],
//                                 borderRadius: BorderRadius.circular(40),
//                               ),
//                               child: Icon(
//                                 Icons.add,
//                                 color: Colors.white,
//                                 size: 17,
//                               )),
//                         ),
//                       ],
//                     ))
//               ],
//             ),
//           ),
//         ),
//       );
//     },
  
//   );
// }

// // Widget item() {
// //   return Padding(
// //     padding: const EdgeInsets.only(bottom: 10),
// //     child: Kcontainer(
// //       h: 75,
// //       decoration: BoxDecoration(boxShadow: [
// //         BoxShadow(
// //           color: Colors.black.withOpacity(.2),
// //           blurRadius: 3.0,
// //           offset: Offset(0, 1),
// //         ),
// //       ], borderRadius: BorderRadius.circular(10), color: Colors.white),
// //       child: Stack(
// //         children: [
// //           Padding(
// //             padding: const EdgeInsets.only(left: 10, top: 10),
// //             child: Kcontainer(
// //               h: 55,
// //               w: 55,
// //               decoration: BoxDecoration(
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black.withOpacity(.3),
// //                       blurRadius: 5.0,
// //                       offset: Offset(0, 2),
// //                     ),
// //                   ],
// //                   image: DecorationImage(
// //                       fit: BoxFit.cover,
// //                       image: NetworkImage( )),
// //                   borderRadius: BorderRadius.circular(10),
// //                   color: Colors.blue),
// //             ),
// //           ),
// //           Positioned(
// //             top: 13,
// //             left: 75,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Ktext(text: "Air Max 2030", weight: FontWeight.bold),
// //                 Ktext(text: "৳:1200tk"),
// //                 Ktext(text: "Delevery Free", size: 10),
// //               ],
// //             ),
// //           ),
// //           Positioned(
// //               bottom: 20,
// //               right: 15,
// //               child: Row(
// //                 children: [
// //                   InkWell(
// //                     onTap: () {},
// //                     child: Kcontainer(
// //                         h: 30,
// //                         w: 30,
// //                         decoration: BoxDecoration(
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.black.withOpacity(.3),
// //                               blurRadius: 5.0,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                           color: Colors.blue[400],
// //                           borderRadius: BorderRadius.circular(40),
// //                         ),
// //                         child: Icon(
// //                           Icons.remove,
// //                           color: Colors.white,
// //                           size: 17,
// //                         )),
// //                   ),
// //                   Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 10),
// //                     child: Ktext(text: "0", size: 20, weight: FontWeight.bold),
// //                   ),
// //                   InkWell(
// //                     onTap: () {},
// //                     child: Kcontainer(
// //                         h: 30,
// //                         w: 30,
// //                         decoration: BoxDecoration(
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.black.withOpacity(.3),
// //                               blurRadius: 5.0,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                           color: Colors.blue[400],
// //                           borderRadius: BorderRadius.circular(40),
// //                         ),
// //                         child: Icon(
// //                           Icons.add,
// //                           color: Colors.white,
// //                           size: 17,
// //                         )),
// //                   ),
// //                 ],
// //               ))
// //         ],
// //       ),
// //     ),
// //   );
// // }
