import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';

class BeerQuestionDialog extends StatefulWidget {
  const BeerQuestionDialog({Key? key}) : super(key: key);
  @override
  _BeerQuestionDialogState createState() => _BeerQuestionDialogState();
}

class _BeerQuestionDialogState extends State<BeerQuestionDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(globalBorderRadius),
      ),
      elevation: 16,
      backgroundColor: Colors.transparent,
      child: beerQuestion(context),
    );
  }

  beerQuestion(context) {
    // Build a dialog with a randomly selected question.
    String questionToDisplay = fetchRandomQuestion();

    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(globalBorderRadius)),
          color: Color.fromARGB(255, 235, 213, 212)),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Text(
                questionToDisplay,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = Colors.black),
              ),
              Text(
                questionToDisplay,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  fetchRandomQuestion() {
    // Randomly select a question from list.
    final _random = Random();
    var selectedQuestion = QuestionList[_random.nextInt(QuestionList.length)];
    return selectedQuestion;
  }
}
