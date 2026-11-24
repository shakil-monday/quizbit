import 'package:flutter/material.dart';

Widget ratingItem() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: index < 4 ? Colors.amberAccent : Colors.grey,
                ),
              ),
            ),

            Text("Posted 3 days ago"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/men/1.jpg",
              ),
            ),
            SizedBox(width: 4),
            Text(
              "Kh. Shakil",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.",
        ),
      ],
    ),
  );
}
