class QuestionModel {
  QuestionModel({
    required this.description,
    required this.options,
  });

  late int answerIndex;

  final String description;
  final List<String> options;
}
