import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/count.dart';
import 'package:flutter/material.dart';

final counterProvider = ChangeNotifierProvider<Counter>(
    (ref) => Counter(count: Count(amount: 0, type: 'NONE')));

class Counter extends ChangeNotifier {
  Count count;

  Counter({required this.count});

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
}
