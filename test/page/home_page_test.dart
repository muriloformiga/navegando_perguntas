import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navegando_perguntas/page/home_page.dart';
import 'package:navegando_perguntas/widgets/questions_widget.dart';

void main() {
  testWidgets(
    'Should find one AppBar, SingleChildScrollView and QuestionWidget',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: HomePage(),
        ),
      );

      final appBar = find.byType(AppBar);
      final scrollView = find.byType(SingleChildScrollView);
      final questionsWidget = find.byType(QuestionsWidget);

      expect(appBar, findsOneWidget);
      expect(scrollView, findsOneWidget);
      expect(questionsWidget, findsOneWidget);
    },
  );
}
