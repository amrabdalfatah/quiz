class Question {
  final String image;
  final String question;
  final String answer;
  final Map<int, String> choices;

  const Question({
    required this.image,
    required this.question,
    required this.answer,
    required this.choices,
  });
}
