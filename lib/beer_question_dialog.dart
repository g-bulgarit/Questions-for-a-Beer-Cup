import 'dart:ui';
import 'package:flutter/material.dart';

class BeerQuestionDialog extends StatefulWidget {
  BeerQuestionDialog();
  String questionToDisplay = "";

  @override
  _BeerQuestionDialogState createState() => _BeerQuestionDialogState();
}

class _BeerQuestionDialogState extends State<BeerQuestionDialog> {
  String questionToDisplay = "כמה מרמיטות נכנסות לבר?";
  // Fetch question here

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 16,
      backgroundColor: Colors.transparent,
      child: beerQuestion(context),
    );
  }

  beerQuestion(context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color.fromARGB(255, 235, 213, 212)),
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.all(50),
      child: Text(
        questionToDisplay,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
