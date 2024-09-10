import 'package:basic_flutter/widgets/answer_questions.dart';
import 'package:basic_flutter/widgets/bottomNavigationBar.dart';
import 'package:basic_flutter/widgets/questions_item.dart';
import 'package:basic_flutter/widgets/total_score.dart';
import 'package:flutter/material.dart';
import 'package:basic_flutter/models/questions_item_model.dart';
import 'package:basic_flutter/widgets/stepper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int questionIndix = 0;
  int totalscore = 0;
  late int answerchosen = -1;
  bool showcsore = true;
  int questionscore = questions.length * 10;
  @override
  Widget build(BuildContext context) {
    showcsore = totalscore >= questionscore;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: !showcsore
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      QuestionsItem(
                        questionsItem: questions[questionIndix],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: List.generate(
                          questions[questionIndix].answers.length,
                          (index) => AnswerQuestions(
                              answerItem:
                                  questions[questionIndix].answers[index],
                              ischosen: answerchosen == index,
                              questionIndixChange: () {
                                setState(() {
                                  answerchosen = index;
                                });
                              }),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (questionIndix + 1 < questions.length) {
                              setState(() {
                                questionIndix += 1;
                              });
                            }
                            setState(() {
                              totalscore += 10;
                              answerchosen = -1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 69, 147, 211),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16.5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: TotalScorePart(
                      totalscore: totalscore,
                      resetQuisApp: () {
                        setState(() {
                          totalscore = 0;
                          questionIndix = 0;
                        });
                      })),
        ),
      ),
      bottomNavigationBar:const bottomNavigationBar(),
    );
  }
}
