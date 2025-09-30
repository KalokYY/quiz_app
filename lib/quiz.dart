import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart'; 

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {

    return _QuizState();
  }
}


class _QuizState extends State<Quiz> {
  Widget ? activeScreen;
  final List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreeen);
    super.initState();
  }
  
  void switchScreeen() {
    setState(
      (){
        activeScreen = QuestionsScreen(
          onSelectedAnswer: chooseAnswer);
        
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ] 
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}