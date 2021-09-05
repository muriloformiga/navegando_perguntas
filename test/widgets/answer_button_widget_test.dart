import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navegando_perguntas/widgets/answer_buttons_widget.dart';

void main() {
  testWidgets(
    'Should find number of ElevatedButtons equals to the options list length',
    (tester) async {
      const answerOptions = ['A', 'B'];

      await tester.pumpWidget(
        MaterialApp(
          home: AnswerButtonsWidget(
            onPressed: (_) {},
            options: answerOptions,
          ),
        ),
      );

      final optionsList = find.byType(ElevatedButton);
      final textA = find.text(answerOptions[0]);
      final textB = find.text(answerOptions[1]);

      expect(textA, findsOneWidget);
      expect(textB, findsOneWidget);
      expect(
        optionsList,
        findsNWidgets(answerOptions.length),
      );
    },
  );
}
