import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String title, description, image;
  final Color color;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });
}

// list of ProductLists
// for our demo
List<Product> productLists = [
  Product(
    id: 1,
    price: 18480,
    title: "CORDLESS GRINDER 20",
    color: Colors.blueAccent,
    image: "assets/images/item1.png",
    description: "Model NO. CAG001",
  ),
  Product(
    id: 2,
    price: 6500,
    title: "CORDLESS DRILL 12V",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item2.png",
    description: "Model NO. CD026",
  ),
  Product(
    id: 3,
    price: 13200,
    title: "RECIPROCATING SAW",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item3.png",
    description: "Model NO. CRS001",
  ),
  Product(
    id: 4,
    price: 18480,
    title: "CORDLESS GRINDER 20",
    color: Colors.blueAccent,
    image: "assets/images/item1.png",
    description: "Model NO. CAG001",
  ),
  Product(
    id: 5,
    price: 6500,
    title: "CORDLESS DRILL 12V",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item2.png",
    description: "Model NO. CD026",
  ),
  Product(
    id: 6,
    price: 13200,
    title: "RECIPROCATING SAW",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item3.png",
    description: "Model NO. CRS001",
  ),
  Product(
    id: 7,
    price: 18480,
    title: "CORDLESS GRINDER 20",
    color: Colors.blueAccent,
    image: "assets/images/item1.png",
    description: "Model NO. CAG001",
  ),
  Product(
    id: 8,
    price: 6500,
    title: "CORDLESS DRILL 12V",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item2.png",
    description: "Model NO. CD026",
  ),
  Product(
    id: 9,
    price: 13200,
    title: "RECIPROCATING SAW",
    color: Colors.deepPurpleAccent,
    image: "assets/images/item3.png",
    description: "Model NO. CRS001",
  ),
];
