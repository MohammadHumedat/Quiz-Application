import 'package:basic_flutter/models/answers_item_model.dart';
import 'package:flutter/material.dart';

class QuestionsItemModel {
  final String title;
  final List<AnswerItemModel> answers;

  QuestionsItemModel({required this.title, required this.answers});
}

List<QuestionsItemModel> questions = [
  QuestionsItemModel(title: 'What is your major?', answers: [
    AnswerItemModel(
      title: "computer science",
      onPressed: () => debugPrint('computer science'),
    ),
    AnswerItemModel(
      title: "Computer Systems engineering",
      onPressed: () => debugPrint('Computer Systems engineering'),
    ),
    AnswerItemModel(
      title: "Software engineering",
      onPressed: () => debugPrint('Software engineering'),
    ),
    AnswerItemModel(
      title: "Maneger",
      onPressed: () => debugPrint('Maneger'),
    ),
  ]),
  QuestionsItemModel(title: 'What is your favorite food?', answers: [
    AnswerItemModel(
      title: "seafood",
      onPressed: () => debugPrint('seafood'),
    ),
    AnswerItemModel(
      title: "Fastfood",
      onPressed: () => debugPrint('Fastfood'),
    ),
    AnswerItemModel(
      title: "Middle East Food",
      onPressed: () => debugPrint('Middle East food'),
    ),
    AnswerItemModel(
      title: "French Food",
      onPressed: () => debugPrint('French Food'),
    ),
  ]),
  QuestionsItemModel(title: 'What is your favorite sport?', answers: [
    AnswerItemModel(
      title: "Football",
      onPressed: () => debugPrint('Football'),
    ),
    AnswerItemModel(
      title: "Basketball",
      onPressed: () => debugPrint('basketball'),
    ),
    AnswerItemModel(
      title: "Tennis",
      onPressed: () => debugPrint('Tennis'),
    ),
    AnswerItemModel(
      title: "volleyball",
      onPressed: () => debugPrint('volleyball'),
    ),
  ]),
  QuestionsItemModel(title: 'What is your favorite  color?', answers: [
    AnswerItemModel(
      title: "Black",
      onPressed: () => debugPrint('Black'),
    ),
    AnswerItemModel(
      title: "Green",
      onPressed: () => debugPrint('Green'),
    ),
    AnswerItemModel(
      title: "Yallow",
      onPressed: () => debugPrint('Yallow'),
    ),
    AnswerItemModel(
      title: "Dark Gray",
      onPressed: () => debugPrint('Dark Gray'),
    ),
  ]),
  QuestionsItemModel(title: 'What is your favorite  Car?', answers: [
    AnswerItemModel(
      title: "Audi",
      onPressed: () => debugPrint('Audi'),
    ),
    AnswerItemModel(
      title: "subaru impreza",
      onPressed: () => debugPrint('subaru impreza'),
    ),
    AnswerItemModel(
      title: "BMW",
      onPressed: () => debugPrint('BMW'),
    ),
    AnswerItemModel(
      title: "Kia sorento",
      onPressed: () => debugPrint('Kia sorento'),
    ),
  ]),
];
