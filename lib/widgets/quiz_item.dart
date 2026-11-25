import 'package:flutter/material.dart';
import 'package:quizbit/model/quizModel.dart';
import 'package:quizbit/features/quizdetail/quizdetail_screen.dart';

class QuizeItem extends StatelessWidget {
  // String coverImgUrl;
  // String title;
  // int entryFees;
  // int prizeMoney;
  // int playCount;
  // int level;

  QuizModel quizModel;

  // QuizeItem({
  //   super.key,
  //   required this.coverImageUrl,
  //   required this.title,
  //   required this.entryFees,
  //   required this.prizeMoney,
  //   required this.level,
  //   required this.playCount,
  // });
  QuizeItem({super.key, required this.quizModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizDetailScreen(
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
            ),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(quizModel.verticalThumbUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            Positioned(
              top: 12,
              left: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Entry Fees",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    "BDT. ${quizModel.entryFees}",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  quizModel.level == 3
                      ? "HARD"
                      : quizModel.level == 2
                      ? "MID"
                      : quizModel.level == 1
                      ? "EASY"
                      : "EASY",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              left: 12,
              child: Text(
                quizModel.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 12,
              right: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.emoji_events, size: 16, color: Colors.white),
                      Text(
                        "BDT. ${quizModel.prizeMoney}",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.people, size: 16, color: Colors.white),
                      Text(
                        "${quizModel.playCount}",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
