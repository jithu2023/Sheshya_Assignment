import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../services/api_service.dart';
import '../widgets/fill_question_widget.dart';
import '../widgets/image_match_question_widget.dart';
import '../widgets/audio_question_widget.dart';
import '../widgets/sentence_question_widget.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final ApiService apiService = ApiService();
  late Future<List<Question>> futureQuestions;

  @override
  void initState() {
    super.initState();
    futureQuestions = apiService.fetchQuestions();
  }

  Widget _buildQuestionWidget(Question question) {
    switch (question.type) {
      case 'fill':
        return FillQuestionWidget(question: question);
      case 'image_match':
        return ImageMatchQuestionWidget(question: question);
      case 'audio':
        return AudioQuestionWidget(question: question);
      case 'sentence':
        return SentenceQuestionWidget(question: question);
      default:
        return const Text('Unknown question type');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sheshya Quiz'),
      ),
      body: FutureBuilder<List<Question>>(
        future: futureQuestions,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No questions available.'));
          } else {
            final questions = snapshot.data!;
            return ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildQuestionWidget(questions[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
