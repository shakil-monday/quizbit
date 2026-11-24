import 'package:flutter/material.dart';

Widget customChip({required String chipName}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.deepOrange, width: 5),
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      chipName,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}
