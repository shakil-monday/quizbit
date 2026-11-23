import 'package:flutter/material.dart';

class QuizeItem extends StatelessWidget {
  String coverImgUrl;
  String title;
  int entryFees;
  int prizeMoney;
  int playCount;
  int level;

  QuizeItem({
    super.key,
    required this.coverImgUrl,
    required this.title,
    required this.entryFees,
    required this.prizeMoney,
    required this.level,
    required this.playCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(
            coverImgUrl,
          ),
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
                  "BDT. $entryFees",
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
                level == 3
                    ? "HARD"
                    : level == 2
                    ? "MID"
                    : level == 1
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
              title,
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
                      "BDT. $prizeMoney",
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
                      "$playCount",
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
    );
  }
}
