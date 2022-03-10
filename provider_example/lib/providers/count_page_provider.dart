import 'package:flutter/material.dart';
import '../models/count.dart';

class CountPageProvider extends ChangeNotifier {
  BuildContext context;
  Count count;

  CountPageProvider({required this.context, required this.count});

  void increment() {
    count.amount++;
    count.type = 'increment';
    notifyListeners();
  }

  void decrement() {
    count.amount--;
    count.type = 'decrement';
    notifyListeners();
  }

  int getCountAmount() {
    return count.amount;
  }

  String getCountType() {
    return count.type;
  }
}
