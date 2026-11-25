import 'package:flutter/material.dart';
import 'package:quizbit/features/quiz/questionModel.dart';
import 'package:quizbit/model/quizModel.dart';
import 'package:quizbit/features/quiz/quiz_screen.dart';
import 'package:quizbit/widgets/chip.dart';
import 'package:quizbit/widgets/quiz_item.dart';
import 'package:quizbit/widgets/ratingitem.dart';

class QuizDetailScreen extends StatefulWidget {
  QuizModel quizModel;
  QuizDetailScreen({super.key, required this.quizModel});

  @override
  State<QuizDetailScreen> createState() => _QuizDetailScreenState();
}

class _QuizDetailScreenState extends State<QuizDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepOrange,
            pinned: true,
            expandedHeight: 220,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      widget.quizModel.level == 3
                          ? "HARD"
                          : widget.quizModel.level == 2
                          ? "MID"
                          : widget.quizModel.level == 1
                          ? "EASY"
                          : "EASY",
                      // "MEDIUM",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.5,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.quizModel.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.people, size: 25, color: Colors.white),
                      SizedBox(width: 10),
                      Text(
                        "${widget.quizModel.playCount} People Played This",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              background: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          // "https://images.unsplash.com/photo-1778918027232-ee2527f92946?w=1920&h=1080&fit=crop&q=80",
                          widget.quizModel.coverImageUrl,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black87],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 8,
                    // color: Colors.amber,
                    surfaceTintColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Entry Fees",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "BDT ${widget.quizModel.entryFees}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.quizModel.description,
                    style: TextStyle(fontSize: 18),
                  ),

                  SizedBox(height: 15),

                  Wrap(
                    children: widget.quizModel.categories.map((item) {
                      return customChip(chipName: item);
                    }).toList(),
                  ),

                  SizedBox(height: 15),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "You May Like 👍",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "More",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 270,
                          child: ListView.separated(
                            itemCount: 15,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return QuizeItem(
                                quizModel: QuizModel(
                                  title: "The Geek Coder",
                                  coverImageUrl: "https://images.unsplash.com/photo-1618477388954-7852f32655ec?w=1080&h=1920&fit=crop&q=80",
                                  verticalThumbUrl: "https://images.unsplash.com/photo-1715457573748-8e8a70b2c1be?w=1920&h=1080&fit=crop&q=80",
                                  entryFees: 3500,
                                  playCount: 3500,
                                  prizeMoney: 30000,
                                  level: 1,
                                  categories: [
                                    "Geography",
                                    "Culture",
                                    "Politics",
                                    "Tourism",
                                    "Bangladesh",
                                  ],
                                  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.",
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ratings & Reviews ⭐️",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 8,
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1768147765107-5eef8e032a62?w=1920&h=1080&fit=crop&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),

                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.black38,
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  bottom: 5,
                                  left: 10,
                                  right: 10,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Give Your Rating",
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 11),
                                      ElevatedButton(
                                        onPressed: () {
                                          print("Cliked on Post button");
                                        },
                                        child: Text("POST"),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        ListView.separated(
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return ratingItem();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        child: SizedBox(
          height: 65,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrangeAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
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
                      questionImageUrl: widget.quizModel.coverImageUrl,
                      questionMoney: 30_000,
                    ),
                  ),
                ),
              );
            },
            child: Text(
              "START",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
