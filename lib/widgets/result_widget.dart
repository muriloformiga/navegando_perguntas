import 'package:flutter/material.dart';
import 'package:navegando_perguntas/models/question_model.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(
    this.questions, {
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final List<QuestionModel> questions;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          questions.length,
          (index) {
            final answerIndex = questions[index].answerIndex;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  questions[index].description,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  questions[index].options[answerIndex],
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.refresh),
              Text('Reiniciar'),
            ],
          ),
        ),
      ],
    );
  }
}
