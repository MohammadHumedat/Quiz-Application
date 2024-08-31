import 'package:basic_flutter/models/answers_item_model.dart';
import 'package:flutter/material.dart';

class AnswerQuestions extends StatelessWidget {
  final AnswerItemModel answerItem;
  final VoidCallback questionIndixChange;
  final bool ischosen;
  const AnswerQuestions(
      {super.key,
      required this.answerItem,
      required this.questionIndixChange,
      required this.ischosen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: InkWell(
          onTap: () {
            questionIndixChange();
            answerItem.onPressed();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(9),
              color: ischosen
                  ? const Color.fromARGB(255, 69, 147, 211)
                  : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.black87,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    answerItem.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: ischosen
                              ? const Color.fromARGB(255, 49, 45, 45)
                              : Colors.black87,
                          fontWeight:
                              ischosen ? FontWeight.bold : FontWeight.normal,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //insted of  using a Inkwell
        // child: ElevatedButton(
        //   onPressed: () {
        //     questionIndixChange();
        //     answerItem.onPressed();
        //   },
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor:
        //         const Color.fromARGB(255, 51, 156, 243), // background
        //     foregroundColor: const Color.fromARGB(255, 0, 0, 0), // foreground
        //   ),
        //   child: Text(answerItem.title),
        // ),
      ),
    );
  }
}
