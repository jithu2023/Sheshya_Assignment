import 'package:flutter/material.dart';
import '../models/question_model.dart';

class ImageMatchQuestionWidget extends StatelessWidget {
  final Question question;

  const ImageMatchQuestionWidget({super.key, required this.question});

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
        if (question.imageUrl != null)
          Image.network(question.imageUrl!),
        const SizedBox(height: 10),
        ...?question.options?.map(
          (option) => ElevatedButton(
            onPressed: () {},
            child: Text(option),
          ),
        ),
      ],
    );
  }
}
