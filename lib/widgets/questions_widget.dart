import 'package:flutter/material.dart';
import 'package:navegando_perguntas/models/question_model.dart';
import 'package:navegando_perguntas/widgets/answer_buttons_widget.dart';

class QuestionsWidget extends StatefulWidget {
  const QuestionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  _QuestionsWidgetState createState() => _QuestionsWidgetState();
}

class _QuestionsWidgetState extends State<QuestionsWidget> {
  final _questions = [
    QuestionModel(
      description: 'Qual é a sua cor favorita?',
      options: ['Azul', 'Preto', 'Amarelo'],
    ),
    QuestionModel(
      description: 'Qual é o seu animal favorito?',
      options: ['Leão', 'Elefante', 'Tartaruga', 'Cavalo'],
    ),
    QuestionModel(
      description: 'Qual é o seu esporte preferido?',
      options: ['Voleibol', 'Futebol', 'Basquetebol'],
    ),
    QuestionModel(
      description: 'Qual é a sua disciplina favorita?',
      options: ['Matemática', 'Inglês', 'Geografia', 'Biologia', 'História'],
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
            ),
            child: Text(
              _questions[_currentIndex].description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          AnswerButtonsWidget(
            options: _questions[_currentIndex].options,
            onPressed: (selectedAnswerIndex) {
              setState(() {
                if (selectedAnswerIndex < _questions.length) {
                  _questions[_currentIndex].answerIndex = selectedAnswerIndex;
                  _currentIndex++;
                } else {}
              });
            },
          ),
        ],
      ),
    );
  }
}
