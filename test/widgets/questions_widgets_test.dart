import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navegando_perguntas/data/mocked_data.dart';
import 'package:navegando_perguntas/widgets/answer_buttons_widget.dart';
import 'package:navegando_perguntas/widgets/questions_widget.dart';

void main() {
  testWidgets(
    'Should find the second question after tap on the first one',
    (tester) async {
      final questionsList = MockedData.questions;
      await tester.pumpWidget(
        MaterialApp(
          home: QuestionsWidget(
            questions: questionsList,
          ),
        ),
      );

      final answerButton = find.byType(AnswerButtonsWidget);
      expect(answerButton, findsOneWidget);

      final firstDescription = find.text(questionsList[0].description);
      expect(firstDescription, findsOneWidget);

      await tester.tap(answerButton);
      await tester.pump();

      final secondDescription = find.text(questionsList[1].description);
      expect(secondDescription, findsOneWidget);
    },
  );
}
