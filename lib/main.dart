import 'package:flutter/material.dart';
import 'package:navegando_perguntas/page/home_page.dart';

void main() => runApp(NavegacaoPerguntaApp());

class NavegacaoPerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação com Perguntas',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}
