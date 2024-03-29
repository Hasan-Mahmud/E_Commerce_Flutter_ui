import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFabourite, isPopular;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,    
    this.isFabourite = false,
    this.isPopular = false,
    @required this.price,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ply5b1.png",
      "assets/images/ply5b2.png",
      "assets/images/ply5b3.png",
      "assets/images/ply5b4.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PS5 DualSense Wireless Controller – Black ", 
    price: 64.99,
    description: description, 
    rating: 4.8,
    isFabourite: true,
    isPopular: true,

  ),

   Product(
    id: 2,
    images: [
      "assets/images/ply5w1.png",
      "assets/images/ply5w2.png",
      "assets/images/ply5w3.png",
      "assets/images/ply5w4.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "PS5 DualSense Wireless Controller – White", 
    price: 64.99,
    description: description, 
    rating: 4.5,
    isPopular: true,

  ),

  Product(
    id: 3,
    images: [
      "assets/images/nike_short1.png",
      "assets/images/nike_short2.png",
      "assets/images/nike_short3.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Dri-\nFIT Icon", 
    price: 41.88,
    description: description, 
    rating: 4.7,
    isFabourite: true,
    isPopular: true,
  ),

  

  Product(
    id: 4,
    images: [
      "assets/images/glovs_real.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Ironclad General Utility Work Gloves", 
    price: 36.55,
    description: description, 
    rating: 4.6,
    isFabourite: true,
    isPopular: true,
  ),

  Product(
    id: 5,
    images: [
      "assets/images/wireless_headset.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Corsair HS70 Pro Wireless Gaming Headset", 
    price: 20.20,
    description: description, 
    rating: 4.1,
    isPopular: true,
  ),

  Product(
    id: 6,
    images: [
      "assets/images/nike_short.png",
    ], 
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant", 
    price: 50.5,
    description: description, 
    rating: 4.1,
    isPopular: true,

  ),
];



const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";