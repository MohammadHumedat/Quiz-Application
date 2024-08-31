import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;
  AnswerItemModel({required this.title, required this.onPressed});
}

// List<AnswerItemModel> answerqes = [
//   AnswerItemModel(
//     title: "computer science",
//     onPressed: () => debugPrint('computer science'),
//   ),
//   AnswerItemModel(
//     title: "Computer Systems engineering",
//     onPressed: () => debugPrint('Computer Systems engineering'),
//   ),
//   AnswerItemModel(
//     title: "Software engineering",
//     onPressed: () => debugPrint('Software engineering'),
//   ),
//   AnswerItemModel(
//     title: "Maneger",
//     onPressed: () => debugPrint('Maneger'),
//   ),
// ];
