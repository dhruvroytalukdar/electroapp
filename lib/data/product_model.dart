import 'package:flutter/material.dart';

class ProductModel {
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  final String category;
  final Color? bgColor;

  ProductModel({
    required this.title,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.bgColor,
  });
}

List<ProductModel> products = [
  ProductModel(
    title: "AirPods Pro",
    price: 499.0,
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    imageUrl: "assets/images/airpods.png",
    category: "Headphones",
    bgColor: Colors.grey[100],
  ),
  ProductModel(
    title: "Watch Series5",
    price: 599.0,
    description:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    imageUrl: "assets/images/applewatch.png",
    category: "Watches",
    bgColor: Colors.yellow[50],
  ),
  ProductModel(
    title: "HomePod Mini",
    price: 349.0,
    description:
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
    imageUrl: "assets/images/homepodmini.jpg",
    category: "Speakers",
    bgColor: Colors.blueGrey[50],
  ),
  ProductModel(
    title: "Apple Headphone",
    price: 475.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/headphone.png",
    category: "Headphones",
    bgColor: Colors.blue[50],
  ),
  ProductModel(
    title: "Airpods Mini",
    price: 585.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/airpodsmini.png",
    category: "Headphones",
    bgColor: Colors.pink[50],
  ),
  ProductModel(
    title: "Watch Series6",
    price: 699.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/applewatchblue.png",
    category: "Watches",
    bgColor: Colors.purple[50],
  ),
  ProductModel(
    title: "Watch SeriesX",
    price: 799.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/applewatchgold.png",
    category: "Watches",
    bgColor: Colors.amber[100],
  ),
  ProductModel(
    title: "Homepod MiniPro",
    price: 595.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/homepodminiwhite.png",
    category: "Speakers",
    bgColor: Colors.red[50],
  ),
  ProductModel(
    title: "Homepod Smart S",
    price: 695.0,
    description:
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    imageUrl: "assets/images/homepodsmart.png",
    category: "Speakers",
    bgColor: Colors.cyan[100],
  ),
];

List<String> categories = ["Speakers", "Headphones", "Watches"];
