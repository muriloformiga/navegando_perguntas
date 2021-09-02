import 'package:flutter/material.dart';
import 'package:navegando_perguntas/widgets/questions_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: QuestionsWidget(),
      ),
    );
  }
}