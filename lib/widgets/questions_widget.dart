import 'package:flutter/material.dart';
import 'package:navegando_perguntas/model/question_model.dart';
import 'package:navegando_perguntas/widgets/answer_buttons_widget.dart';
import 'package:navegando_perguntas/widgets/result_widget.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({
    required this.questions,
    Key? key,
  }) : super(key: key);

  final List<QuestionModel> questions;

  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: _currentIndex < widget.questions.length
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 15,
                  ),
                  child: Text(
                    widget.questions[_currentIndex].description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                AnswerButtonsWidget(
                  options: widget.questions[_currentIndex].options,
                  onPressed: (selectedAnswerIndex) {
                    widget.questions[_currentIndex].answerIndex =
                        selectedAnswerIndex;
                    setState(() => _currentIndex++);
                  },
                ),
              ],
            )
          : ResultWidget(
              widget.questions,
              onPressed: () {
                setState(() => _currentIndex = 0);
              },
            ),
    );
  }
}
