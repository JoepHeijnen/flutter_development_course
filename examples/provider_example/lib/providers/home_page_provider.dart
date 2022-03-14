import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  BuildContext context;

  int _counter = 0;

  HomePageProvider({required this.context});

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  int getCounter() {
    return _counter;
  }
}
