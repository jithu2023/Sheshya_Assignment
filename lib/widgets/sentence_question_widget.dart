import 'package:flutter/material.dart';
import '../models/question_model.dart';

class SentenceQuestionWidget extends StatelessWidget {
  final Question question;

  const SentenceQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.questionText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Complete the sentence',
          ),
        ),
      ],
    );
  }
}
