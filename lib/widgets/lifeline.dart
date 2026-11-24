import 'package:flutter/material.dart';

Widget lifeline({required String title, required IconData icon}) {
  return GestureDetector(
    onTap: () {
      print("Clicked on life line avatar");
    },
    child: Column(
      children: [
        CircleAvatar(radius: 30, child: Icon(icon)),
        SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
