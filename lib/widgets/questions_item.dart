import 'package:basic_flutter/models/questions_item_model.dart';
import 'package:flutter/material.dart';

class QuestionsItem extends StatelessWidget {
  final QuestionsItemModel questionsItem;
  const QuestionsItem({super.key, required this.questionsItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        
        children: [
          Text(
            questionsItem.title,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(height: 6.5),
          Text(
            'Answer and get points',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black87,
                ),
          ),
        ],
      ),
    );
  }
}
