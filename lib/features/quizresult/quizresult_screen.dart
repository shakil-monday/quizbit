import 'package:flutter/material.dart';
import 'package:quizbit/features/quiz/questionModel.dart';
import 'package:quizbit/features/quiz/quiz_screen.dart';

class QuizResultScreen extends StatefulWidget {
  Questionmodel questionmodel;
  QuizResultScreen({super.key, required this.questionmodel});

  @override
  State<QuizResultScreen> createState() => _QuizResultScreenState();
}

class _QuizResultScreenState extends State<QuizResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Text(
              "Yes! that is correct.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.check_circle, size: 200, color: Colors.green),
            SizedBox(height: 30),
            Text(
              "Your Selected Options is Correct",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Text(
              "DHAKA (Option 2)",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 35),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explanation",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            OutlinedButton(
              onPressed: () {},
              child: Text("Ask more about this question"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: SizedBox(
          height: 75,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(
                    questionModel: Questionmodel(
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
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "NEXT",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "For 180K",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
