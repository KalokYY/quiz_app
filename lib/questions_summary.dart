import 'package:flutter/material.dart'; 
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
const QuestionsSummary({super.key, required this.summaryData});

final List<Map<String, Object>> summaryData;

@override
Widget build(BuildContext context) {
return Column(
  children: summaryData.map(
    (data){
      final isCorrect = data['correct_answer'] == data['user_answer'];
      final questionIndex = (data['question_index'] as int) + 1;

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isCorrect
                ? const Color.fromARGB(255, 150, 198, 241)
                : const Color.fromARGB(255, 249, 133, 241),
                borderRadius: BorderRadius.circular(100)
              ),
              child: Text(
                questionIndex.toString(),
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 22, 2, 56)
                ),
              ),
            ),

            const SizedBox(
              width: 20
              ),
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String, 
                      style: GoogleFonts.lato(
                        color: isCorrect
                        ? const Color.fromARGB(255, 150, 198, 241)
                        : const Color.fromARGB(255, 249, 133, 241),
                        ),
                      ),
                      Text(
                        data ['correct_answer'] as String,
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 181, 254, 246),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ).toList(),
    );
  }
}