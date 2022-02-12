import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'constants.dart';

class BeerQuestionDialog extends StatefulWidget {
  BeerQuestionDialog();
  String questionToDisplay = "";

  @override
  _BeerQuestionDialogState createState() => _BeerQuestionDialogState();
}

class _BeerQuestionDialogState extends State<BeerQuestionDialog> {
  //String questionToDisplay = "כמה מרמיטות נכנסות לבר?";
  // Fetch question here

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
          Text(
            questionToDisplay,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }

  fetchRandomQuestion() {
    final _random = Random();
    // generate a random index based on the list length
    // and use it to retrieve the element
    var selectedQuestion = QuestionList[_random.nextInt(QuestionList.length)];
    return selectedQuestion;
  }
}
