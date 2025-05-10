import 'package:flutter/material.dart';
import '../models/question_model.dart';

class AudioQuestionWidget extends StatelessWidget {
  final Question question;

  const AudioQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    // Note: Implement audio playback functionality as needed.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.questionText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text('Audio playback not implemented.'),
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
