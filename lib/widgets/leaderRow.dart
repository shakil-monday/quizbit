import 'package:flutter/material.dart';

Widget leaderRow({
  required String profileUrl,
  required String rank,
  required String name,
  required String amount,
  required String title,
  bool highlighted = false,
}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    decoration: BoxDecoration(
      color: highlighted ? Colors.green.shade100 : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 40,
          child: Text(
            rank,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(radius: 20, backgroundImage: NetworkImage(profileUrl)),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name),
            Text(amount, style: TextStyle(fontSize: 12)),
          ],
        ),
        Spacer(),
        Text(
          "Sawage Coder",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(width: 20),
      ],
    ),
  );
}
