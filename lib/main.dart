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
          return BeerQuestionDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 97, 116, 228)),
      child: Center(
          child: Material(
        elevation: 4.0,
        shape: CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.transparent,
        child: Ink.image(
          image: const AssetImage('beer.png'),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.2,
          child: InkWell(
            onTap: summonBeerQuestion,
          ),
        ),
      )),
    ));
  }
}
