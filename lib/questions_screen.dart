// StatefulWidget's methods
// initstate()
// buld()
// setstate()
// dispose()

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen ({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      // currentQuestionIndex = currentQuestionIndex + 1;
      // currentQuestionIndex += 1;
      currentQuestionIndex++;
    });
  }
  
  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.ubuntu(
                color: Color.fromARGB(255, 54, 199, 235),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            //Spread Operator
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return AnswerButton (
                answerText: answer, 
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }
          )

            // This is Another ways of upper codes
            // AnswerButton(
            //   answerText: currentQuestion.answers[0], 
            //   onTap: (){},
            //   ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[1], 
            //   onTap: (){},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[2], 
            //   onTap: (){},
            // ),
            // AnswerButton(
            //   answerText: currentQuestion.answers[3], 
            //   onTap: (){},
            // ),
          ],
        ),
      )
    );
  }
}