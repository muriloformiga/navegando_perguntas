import 'package:navegando_perguntas/model/question_model.dart';

abstract class MockedData {
  static final questions = [
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
}
