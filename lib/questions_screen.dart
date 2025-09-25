import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            "The Question...", 
             style: TextStyle(
            color: Colors.white,
             ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 4"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 5"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 6"),
          ),
        ],
      ),
    );
  }
}