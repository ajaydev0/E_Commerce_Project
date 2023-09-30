// // ignore_for_file: prefer_const_constructors, file_names
// import 'package:demo_project/Screens/Pages/Cart_Page/Data_Cart.dart';
// import 'package:demo_project/Screens/Pages/Home_Page/Data_HomePage/Box1_Data_PageView.dart';
// import 'package:demo_project/Ui/Ui_Content.dart';
// import 'package:flutter/material.dart';
// import '../../../../Ui/Widgets/AppSize_MediaQuery.dart';
// import '../../../../Ui/Widgets/Container_Widget.dart';
// import '../../../../Ui/Widgets/SizeBox_Widget.dart';
// import '../../../../Ui/Widgets/Text_Widget.dart';

// Widget productListView(BuildContext context, index, HomeData item) {
//   // HomeData homeitem = ProductsList().itemData[index];
//   // HomeData cartitem = cartData[index];
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(left: 10, top: 10),
//         child: Stack(
//           children: [
//             Kcontainer(
//               h: Kh(context: context, value: 30),
//               w: Kw(context: context, value: 41),
//               decoration: BoxDecoration(
//                   boxShadow: [
//                     //upor nic
//                     BoxShadow(
//                       color: Colors.black.withOpacity(.4),
//                       blurRadius: 10.0,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                   color: appcolors.blue300,
//                   borderRadius: BorderRadius.circular(15)),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 10,
//                 top: 10,
//               ),
//               child: Kcontainer(
//                 h: 110,
//                 w: 130,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         fit: BoxFit.cover, image: NetworkImage(item.imgUrl)),
//                     color: appcolors.white,
//                     borderRadius: BorderRadius.circular(15)),
//               ),
//             ),
//             Positioned(
//               left: 10,
//               top: 130,
//               child: Ktext(text: " ${item.name}", weight: FontWeight.bold),
//             ),
//             Positioned(
//               left: 10,
//               top: 155,
//               child: Kcontainer(
//                   h: 23,
//                   w: 65,
//                   decoration: BoxDecoration(
//                       color: appcolors.grey300,
//                       borderRadius: BorderRadius.circular(5)),
//                   child: Center(
//                     child: Ktext(
//                         text: "6 Colors", color: appcolors.grey700, size: 13
//                         // weight: FontWeight.bold,
//                         ),
//                   )),
//             ),
//             Positioned(
//               left: 10,
//               top: 185,
//               child: Row(
//                 children: [
//                   Ktext(
//                     text: "\$500",
//                     weight: FontWeight.bold,
//                     size: 20,
//                   ),
//                   KsBox(w: 55),
//                   GestureDetector(
//                     onTap: () {
//                       print("Data Add");
//                       addToCart(item);

//                       // print(!cartData.contains(item));
//                       // print(ProductsList().itemData[0].id);
//                       // // print(homeitem.id);
//                       // // print(cartData[index].id);
//                       // // cartData.insert(0, item);
//                       // if (cartData.isEmpty) {
//                       //   cartData.insert(0, item);
//                       // } else if (cartData.contains(item) ==
//                       //     ProductsList().itemData[0]) {
//                       //   return print("Add 2");
//                       // } else {
//                       //   return print("null2");
//                       // }

//                       // if (ProductsList().itemData[index].id == 1) {
//                       //   if (cartData[index].id == ProductsList().itemData[index].id) {

//                       //   }
//                       //   cartData.insert(index, item);
//                       // }
//                       // if (ProductsList().itemData[index].id == 2) {
//                       //   cartData.insert(index, item);
//                       // }
//                       // if (ProductsList().itemData[index].id == 3) {
//                       //   cartData.insert(index, item);
//                       // }
//                       // if (ProductsList().itemData[index].id == 4) {
//                       //   cartData.insert(index, item);
//                       // }
// //
//                       // if (cartData.length == 0 ||
//                       //     ProductsList().itemData[index].id !=
//                       //         cartData[index].id) {
//                       //   cartData.insert(index, item);
//                       //   // if (ProductsList().itemData[index].id !=
//                       //   //     cartData[index].id) {
//                       //   //   cartData.insert(index, item);
//                       //   // }
//                       // } else {
//                       //   return null;
//                       // }
//                       // if (cartData.contains(item.id)) {
//                       //   return null;
//                       // } else {
//                       //   cartData.insert(index, item);
//                       // }
//                       // if (cartData != null) {
//                       //   cartData.insert(index, item);

//                       // }

//                       // if (ProductsList().itemData[index].id ==
//                       //     cartData[index].id) {
//                       //   return null;
//                       // }
//                     },
//                     child: Icon(
//                       Icons.add,
//                       size: 25,
//                       color: appcolors.halkablack,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       KsBox(h: 20),
//     ],
//   );
// }
