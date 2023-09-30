// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, avoid_types_as_parameter_names

// import 'package:demo_project/Screens/Pages/Home_Page/Data_HomePage/Box1_Data_PageView.dart';
// import 'package:demo_project/Ui/Ui_Content.dart';
// import 'package:demo_project/Ui/Widgets/AppSize_MediaQuery.dart';
// import 'package:flutter/material.dart';
// import '../../../../Ui/Widgets/Container_Widget.dart';
// import '../../../../Ui/Widgets/ElevatedButton_Widget.dart';
// import '../../../../Ui/Widgets/SizeBox_Widget.dart';
// import '../../../../Ui/Widgets/Text_Widget.dart';

// Widget products({
//   required index,
//   required context,
//   required itemImg,
//   required itemName,
// }) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Hero(
//       tag: ProductsList().itemData[index].name,
//       child: GestureDetector(
//         onTap: () {
//           // Navigator.of(context).push(MaterialPageRoute(
//           //     builder: (context) => navigation().nav[index].Ontap));
//         },
//         child: Kcontainer(
//             h: 30,
//             w: Kw(context: context, value: 5),
//             decoration: BoxDecoration(
//               boxShadow: [
//                 //upor nic
//                 BoxShadow(
//                   color: Colors.black.withOpacity(.4),
//                   blurRadius: 3.0,
//                   offset: Offset(0, 5),
//                 ),
//                 //left
//                 // BoxShadow(
//                 //   color: Colors.white,
//                 //   offset: Offset(-5, 0),
//                 // ),
//                 // //right
//                 // BoxShadow(
//                 //   color: Colors.white,
//                 //   offset: Offset(5, 0),
//                 // ),
//               ],
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.white,
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   top: 13,
//                   left: 10,
//                   child: Kcontainer(
//                     h: 100,
//                     w: 150,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: NetworkImage(itemImg
//                             // HomePageBox1().itemName[index],
//                             // HomePageBox1().itemImg[index]
//                             ),
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 15,
//                   left: 170,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Ktext(
//                         text: "Premium",
//                         size: 12,
//                       ),
//                       KsBox(
//                         h: 2,
//                       ),
//                       Ktext(
//                         text: itemName,
//                         // text: HomePageBox1().itemName[index],
//                         size: 18,
//                         weight: FontWeight.bold,
//                       ),
//                       Row(
//                         children: [
//                           Kcontainer(
//                             margin: EdgeInsets.only(right: 1),
//                             child: Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 12,
//                             ),
//                           ),
//                           Kcontainer(
//                             margin: EdgeInsets.only(right: 1),
//                             child: Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 12,
//                             ),
//                           ),
//                           Kcontainer(
//                             margin: EdgeInsets.only(right: 1),
//                             child: Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 12,
//                             ),
//                           ),
//                           Kcontainer(
//                             margin: EdgeInsets.only(right: 1),
//                             child: Icon(
//                               Icons.star,
//                               color: Colors.amber,
//                               size: 12,
//                             ),
//                           ),
//                           Kcontainer(
//                             margin: EdgeInsets.only(right: 5),
//                             child: Icon(
//                               Icons.star,
//                               color: Colors.grey,
//                               size: 12,
//                             ),
//                           ),
//                           Ktext(
//                             text: '4.0',
//                             color: Colors.black87,
//                             size: 12,
//                           ),
//                         ],
//                       ),
//                       KsBox(
//                         h: 5,
//                       ),
//                       GestureDetector(
//                         onTap: () {},
//                         child: Kcontainer(
//                             h: 35,
//                             w: 90,
//                             decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             child: Center(
//                                 child: Ktext(
//                                     text: "Buy Now",
//                                     color: Colors.white,
//                                     weight: FontWeight.bold))),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     ),
//   );
// }
