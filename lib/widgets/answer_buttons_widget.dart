import 'package:flutter/material.dart';

class AnswerButtonsWidget extends StatelessWidget {
  const AnswerButtonsWidget({
    required this.options,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final List<String> options;
  final void Function(int selectedIndex) onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        options.length,
        (index) {
          return ElevatedButton(
            child: Text(
              options[index],
            ),
            onPressed: () => onPressed(index),
          );
        },
      ),
    );
  }
}
