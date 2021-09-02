class QuestionModel {
  QuestionModel({
    required this.description,
    required this.options,
  });

  int? answerIndex;

  final String description;
  final List<String> options;
}
