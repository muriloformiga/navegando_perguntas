import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navegando_perguntas/model/question_model.dart';
import 'package:navegando_perguntas/widgets/result_widget.dart';

void main() {
  testWidgets(
    'Should find the Questions and Answers text and refresh button',
    (tester) async {
      final questions = [
        QuestionModel(
          description: 'First',
          options: ['A', 'B'],
        )..answerIndex = 1,
        QuestionModel(
          description: 'Second',
          options: ['A', 'B', 'C'],
        )..answerIndex = 0,
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: ResultWidget(
            questions,
            onPressed: () {},
          ),
        ),
      );

      final refreshIcon = find.byIcon(Icons.refresh);
      final restartText = find.text('Reiniciar');

      expect(refreshIcon, findsOneWidget);
      expect(restartText, findsOneWidget);

      questionsWidgetsTest(questions);
    },
  );
}

void questionsWidgetsTest(List<QuestionModel> questions) {
  final firstAnswerIndex = questions[0].answerIndex;
  final secondAnswerIndex = questions[1].answerIndex;

  final firstDescription = find.text(
    questions[0].description,
  );
  final secondDescription = find.text(
    questions[1].description,
  );
  final firstAnswer = find.text(
    questions[0].options[firstAnswerIndex],
  );
  final secondAnswer = find.text(
    questions[1].options[secondAnswerIndex],
  );

  expect(firstDescription, findsWidgets);
  expect(secondDescription, findsWidgets);
  expect(firstAnswer, findsWidgets);
  expect(secondAnswer, findsWidgets);
}
