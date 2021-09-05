import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:navegando_perguntas/data/mocked_data.dart';
import 'package:navegando_perguntas/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets(
    'Should tap the entire form and then restart it',
    (tester) async {
      app.main();
      await tester.pumpAndSettle();
      final questionsList = MockedData.questions;

      final random = Random();
      for (int i = 0; i < questionsList.length; i++) {
        final answerButtons = find.byType(ElevatedButton);
        expect(
          answerButtons,
          findsNWidgets(questionsList[i].options.length),
        );

        final number = random.nextInt(answerButtons.evaluate().length);
        await tester.tap(answerButtons.at(number));
        await tester.pump();
      }

      final restartButton = find.byIcon(Icons.refresh);
      expect(restartButton, findsOneWidget);
      await Future.delayed(Duration(seconds: 3));

      await tester.tap(restartButton);
      await tester.pump();
    },
  );
}
