import 'package:flutter/material.dart';
import 'beer_question_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void summonBeerQuestion() {
    // Summons a new dialog with a question.
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const BeerQuestionDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
        Color.fromARGB(255, 97, 116, 228),
        Color.fromARGB(255, 37, 54, 146)
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Center(
          child: Material(
        elevation: 0.0,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.transparent,
        child: Ink.image(
          image: const AssetImage('beer_new.png'),
          fit: BoxFit.scaleDown,
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.6,
          child: InkWell(
            onTap: summonBeerQuestion,
          ),
        ),
      )),
    ));
  }
}
