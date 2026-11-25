import 'package:flutter/material.dart';
import 'package:quizbit/features/quiz/questionModel.dart';
import 'package:quizbit/features/quizresult/quizresult_screen.dart';

Widget optionTile({
  required BuildContext context,
  required String optionText,
  required Color background,
  Color borderColor = Colors.black,
  bool showLock = false,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizResultScreen(
            questionmodel: Questionmodel(
              question: "What is the capital of Bangladesh?",
              option1: "Chittagong",
              option2: "Dhaka",
              option3: "Sylhet",
              option4: "Barisal",
              correctOpt: "2",
              questionMoney: 30_000,
            ),
          ),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: borderColor, width: 1.5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              optionText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          if (showLock) Icon(Icons.lock, size: 18, color: Colors.black54),
        ],
      ),
    ),
  );
}
