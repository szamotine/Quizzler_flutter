import 'package:flutter/material.dart';

class ScoreKeeper extends StatefulWidget {
  const ScoreKeeper({super.key});

  static List<Widget> scoreBoard = [];
  static int numberCorrect = 0;
  static int numberIncorrect = 0;

  static void rightAnswer() => {scoreBoard.add(const Expanded(flex: 1, child: rightIcon)), numberCorrect++};

  static void wrongAnswer() => {scoreBoard.add(const Expanded(flex: 1, child: wrongIcon)), numberIncorrect++};

  static const Icon rightIcon = Icon(
    Icons.check,
    color: Colors.green,
  );
  static const Icon wrongIcon = Icon(
    Icons.close,
    color: Colors.red,
  );

  @override
  State<ScoreKeeper> createState() => _ScoreKeeperState();
}

class _ScoreKeeperState extends State<ScoreKeeper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: ScoreKeeper.scoreBoard,
    );
  }
}
