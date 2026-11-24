import 'package:flutter/material.dart';

Widget prizeTile({required String text, bool active = false}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    padding: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: active
          ? Colors.deepOrangeAccent
          : Colors.deepPurpleAccent.shade100,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: Colors.deepPurple),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    ),
  );
}
