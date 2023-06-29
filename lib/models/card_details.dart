import 'package:flutter/material.dart';

class CardDetails {
  late String tittle;
  late String description;
  late String timing;

  static int totalTask = 0;
  static double taskCompleted = 0;

  CardDetails(this.tittle, this.description, this.timing) {
    totalTask++;
  }
}

List<Color> cardColors = [
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.purple
];
