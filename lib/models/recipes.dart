import 'package:flutter/material.dart';

class RecipeBundle {
  final int id, time;
  final String title, description, imageSrc, level;
  final Color color;

  RecipeBundle(
      {required this.id,
      required this.time,
      required this.level,
      required this.title,
      required this.description,
      required this.imageSrc,
      required this.color});
}

// Demo list
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
    id: 1,
    time: 25,
    level: "easy",
    title: "Tasty alla Carbonara",
    description: "Easy and quick to make.",
    imageSrc: 'assets/images/carbonara.png',
    color: Color.fromARGB(255, 255, 145, 0),
  ),
  RecipeBundle(
    id: 2,
    time: 50,
    level: "high",
    title: "Famous Polish Zurek",
    description: "Tasty and hearty soup",
    imageSrc: "assets/images/zurek.png",
    color: Color.fromARGB(255, 133, 43, 16),
  ),
  RecipeBundle(
    id: 3,
    time: 10,
    level: "mid",
    title: "Classical Mexican Cousine",
    description: "Best tacos in the town",
    imageSrc: "assets/images/tacos.png",
    color: Color.fromARGB(255, 13, 155, 15),
  ),
  RecipeBundle(
    id: 4,
    time: 30,
    level: "easy",
    title: "Indian Tikka Masala",
    description: "Much flavor chicken",
    imageSrc: "assets/images/masala.png",
    color: Color.fromARGB(255, 119, 35, 158),
  ),
];
