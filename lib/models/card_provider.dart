import 'package:flutter/material.dart';
import 'package:to_do_list/models/card_details.dart';

class CardProvider extends ChangeNotifier {
  List<CardDetails> toDoList = [];

  void add(CardDetails obj) {
    toDoList.add(obj);
    // /notifylisterner ::::
  }
}
