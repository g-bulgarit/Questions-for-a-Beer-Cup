import 'dart:ui';
import 'package:flutter/material.dart';

class BeerQuestionDialog extends StatefulWidget {
  String question = "";
  BeerQuestionDialog(question, {Key? key}) : super(key: key);

  @override
  _BeerQuestionDialogState createState() => _BeerQuestionDialogState();
}

class _BeerQuestionDialogState extends State<BeerQuestionDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: beerQuestion(context),
    );
  }

  beerQuestion(context) {
    return Container(
      color: Colors.red,
    );
  }
}
