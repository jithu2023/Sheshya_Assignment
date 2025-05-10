import '../models/question_model.dart';
import '../utils/mock_data.dart';

class ApiService {
  Future<List<Question>> fetchQuestions() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    return mockQuestions.map((json) => Question.fromJson(json)).toList();
  }
}
