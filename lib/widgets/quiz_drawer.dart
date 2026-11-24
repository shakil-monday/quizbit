import 'package:flutter/material.dart';
import 'package:quizbit/widgets/lifeline.dart';
import 'package:quizbit/widgets/prizeTile.dart';

class QuizDrawer extends StatefulWidget {
  const QuizDrawer({super.key});

  @override
  State<QuizDrawer> createState() => _QuizDrawerState();
}

class _QuizDrawerState extends State<QuizDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          Center(
            child: Text(
              "LIFE LINES",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              lifeline(title: "Audience\nPoll", icon: Icons.people),
              lifeline(
                title: "Double\nDip",
                icon: Icons.keyboard_double_arrow_down_rounded,
              ),
              lifeline(
                title: "Ask The\nExpert",
                icon: Icons.emoji_people_rounded,
              ),
              lifeline(
                title: "Change\nQuestion",
                icon: Icons.data_object_outlined,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(thickness: 3, indent: 20, endIndent: 20),
          ),

          Center(
            child: Text(
              "PRIZES",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.all(0),
              physics: BouncingScrollPhysics(),
              children: [
                prizeTile(text: "BDT. 7 Crore"),
                prizeTile(text: "BDT. 5 Crore"),
                prizeTile(text: "BDT. 3 Crore"),
                prizeTile(text: "BDT. 1 Crore"),
                prizeTile(text: "BDT. 50,20,000"),
                prizeTile(text: "BDT. 7,20,000"),
                prizeTile(text: "BDT. 6,40,000"),
                prizeTile(text: "BDT. 3,20,000"),
                prizeTile(text: "BDT. 1,60,000", active: true),
                prizeTile(text: "BDT. 80,000"),
                prizeTile(text: "BDT. 40,000"),
                prizeTile(text: "BDT. 20,000"),
                prizeTile(text: "BDT. 10,000"),
                prizeTile(text: "BDT. 5,000"),
              ],
            ),
          ),

          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
