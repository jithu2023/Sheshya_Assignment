class Question {
  final String type;
  final String questionText;
  final List<String>? options;
  final String? imageUrl;
  final String? audioUrl;
  final String? correctAnswer;

  Question({
    required this.type,
    required this.questionText,
    this.options,
    this.imageUrl,
    this.audioUrl,
    this.correctAnswer,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      type: json['type'],
      questionText: json['questionText'],
      options: List<String>.from(json['options'] ?? []),
      imageUrl: json['imageUrl'],
      audioUrl: json['audioUrl'],
      correctAnswer: json['correctAnswer'],
    );
  }
}
