import 'package:flutter/material.dart';
import 'package:quizbit/features/leaderboard/leaderboard_screen.dart';
import 'package:quizbit/features/quiz/questionModel.dart';
import 'package:quizbit/widgets/optionTile.dart';
import 'package:quizbit/widgets/quiz_drawer.dart';

class QuizScreen extends StatefulWidget {
  Questionmodel questionModel;

  QuizScreen({super.key, required this.questionModel});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    final questionModel = widget.questionModel;

    return Scaffold(
      drawer: QuizDrawer(),
      appBar: AppBar(
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        centerTitle: true,
        title: Text("BDT ${questionModel.questionMoney}"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 230,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.white,
                    child: Opacity(
                      opacity: 0.37,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        child: Image.network(
                          // "https://images.unsplash.com/photo-1778918027232-ee2527f92946?w=1920&h=1080&fit=crop&q=80",
                          questionModel.questionImageUrl!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -20,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.deepOrange,
                            width: 4,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 5),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "30",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text("+10 Sec"),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text("+30 Sec"),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.redAccent.shade200),
                  ),
                  child: Text(
                    questionModel.question,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 20),

                optionTile(
                  context: context,
                  optionText: "1. ${questionModel.option1}",
                  background: Colors.deepOrange.shade200,
                ),
                optionTile(
                  context: context,
                  optionText: "2. ${questionModel.option2}",
                  background: Colors.amber.shade200,
                  borderColor: Colors.redAccent,
                  showLock: true,
                ),
                optionTile(
                  context: context,
                  optionText: "3. ${questionModel.option3}",
                  background: Colors.deepOrange.shade200,
                ),
                optionTile(
                  context: context,
                  optionText: "4. ${questionModel.option4}",
                  background: Colors.deepOrange.shade200,
                ),
              ],
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
                MaterialPageRoute(builder: (context) => LeaderboardScreen()),
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
                  "QUIT",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Take 20K Only",
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
