import 'package:flutter_test/flutter_test.dart';
import 'package:navegando_perguntas/main.dart';
import 'package:navegando_perguntas/page/home_page.dart';

void main() {
  testWidgets(
    'Should find one HomePage',
    (tester) async {
      await tester.pumpWidget(
        NavegacaoPerguntaApp(),
      );

      final homePage = find.byType(HomePage);

      expect(homePage, findsOneWidget);
    },
  );
}
