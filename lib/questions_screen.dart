import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectedAnswer});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectedAnswer(selectedAnswers);
    setState(() {
      currentQuestionsIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionsIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
               style: TextStyle(
              color: Colors.white,
               ),
               textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item)
            {
              return AnswerButton(
                answerText: item, 
                onTap: () {
                  answerQuestion(item)
                },
              );
            }),          
          ],
        ),
      ),
    );
  }
}