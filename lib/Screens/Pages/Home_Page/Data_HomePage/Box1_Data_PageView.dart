// ignore_for_file: file_names, non_constant_identifier_names, camel_case_types

//

import '../Products_Details/Product1_Details.dart';
import '../Products_Details/Product2_Details.dart';
import '../Products_Details/Product3_Details .dart';
import '../Products_Details/Product4_Details.dart';

class Product {
  final int id;
  final int price;
  final String name;
  final String imgUrl;

  Product(
    this.id,
    this.price,
    this.name,
    this.imgUrl,
  );
}

//Product data
List<Product> products = [
  Product(
    01,
    750,
    "Nike 256",
    "https://images.pexels.com/photos/7926150/pexels-photo-7926150.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ),
  Product(
    02,
    800,
    "Air Max 1090",
    "https://images.pexels.com/photos/1580267/pexels-photo-1580267.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ),
  Product(
    03,
    850,
    "Jordan 520",
    "https://images.pexels.com/photos/1407354/pexels-photo-1407354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  Product(
    04,
    900,
    "Nike 300",
    "https://images.pexels.com/photos/10134303/pexels-photo-10134303.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ),
];

// //

class HomeData {
  final int id;
  final int price;
  final String name;
  final String imgUrl;

  HomeData(
    this.id,
    this.price,
    this.name,
    this.imgUrl,
  );
}

class ProductsList {
  List<HomeData> itemData = [
    HomeData(
      01,
      750,
      "Nike 256",
      "https://images.pexels.com/photos/7926150/pexels-photo-7926150.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    ),
    HomeData(
      02,
      800,
      "Air Max 1090",
      "https://images.pexels.com/photos/1580267/pexels-photo-1580267.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    ),
    HomeData(
      03,
      850,
      "Jordan 520",
      "https://images.pexels.com/photos/1407354/pexels-photo-1407354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    HomeData(
      04,
      900,
      "Nike 300",
      "https://images.pexels.com/photos/10134303/pexels-photo-10134303.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    ),
  ];
}

// //

// //PageView.Builder OnTap List
class HomeData2 {
  final Ontap;
  HomeData2({
    required this.Ontap,
  });
}

class navigation {
  List<HomeData2> nav = [
    HomeData2(Ontap: const ProductDetail1()),
    HomeData2(Ontap: const ProductDetail2()),
    HomeData2(Ontap: const ProductDetail3()),
    HomeData2(Ontap: const ProductDetail4()),
  ];
}

//
// class HomePageBox1 {
//   final String itemName;
//   final String imageName;

//   HomePageBox1(
//     this.itemName,
//     this.imageName,
//   );
//   List<HomePageBox1> dataList = [
//     HomePageBox1(
//       "Short Dress",
//       "https://images.pexels.com/photos/18129433/pexels-photo-18129433/free-photo-of-young-fashionable-woman-in-sunglasses-posing-in-city-at-night.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
//     ),
//     HomePageBox1(
//       "Office Formals",
//       "https://images.pexels.com/photos/16221171/pexels-photo-16221171/free-photo-of-woman-wearing-a-brown-blazer-and-a-hat.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
//     ),
//     HomePageBox1(
//       "Casual Jeans",
//       "https://images.pexels.com/photos/16459410/pexels-photo-16459410/free-photo-of-young-fashionable-woman-posing-in-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//     ),
//     HomePageBox1(
//       "Jeans Skirt",
//       "https://images.pexels.com/photos/17143532/pexels-photo-17143532/free-photo-of-young-woman-in-a-trendy-outfit-and-sunglasses.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//     ),
//   ];
// }

// class HomePageBox1 {
//   //Length ( HomePageBox1().itemName.length ) Deowa Ace
//   List<String> itemName = [
//     "Nike 256",
//     "Air Max 1090",
//     "Jordan 520",
//     "Nike 300",
//   ];
//   List<String> itemImg = [
//     "https://images.pexels.com/photos/1580267/pexels-photo-1580267.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//     "https://images.pexels.com/photos/10134303/pexels-photo-10134303.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//     "https://images.pexels.com/photos/7926150/pexels-photo-7926150.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
//     "https://images.pexels.com/photos/1407354/pexels-photo-1407354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
//   ];
// }
