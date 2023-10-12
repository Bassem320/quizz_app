import 'package:flutter/material.dart';
import 'package:quizz_app/question_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/start_screen.dart';

import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var _activeScreen = 'start_screen';
  List<String> _selectedAnswers = [];

  _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'result_screen';
      });
    }
  }

  void _switchScreen() {
    setState(() {
      _activeScreen = 'question_screen';
    });
  }

  void _restartQuiz(){
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'start_screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(startQuiz: _switchScreen);
    if (_activeScreen == 'question_screen') {
      screenWidget = QuestionScreen(
        onSelectedAnswer: _chooseAnswer,
      );
    }
    if (_activeScreen == 'result_screen') {
      screenWidget = ResultScreen(chosenAnswers: _selectedAnswers,onRestartQuiz: _restartQuiz,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color.fromARGB(255, 75, 6, 143),
                Color.fromARGB(255, 105, 22, 186),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
