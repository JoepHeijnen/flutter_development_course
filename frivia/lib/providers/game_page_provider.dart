import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GamePageProvider extends ChangeNotifier {
  final Dio _dio = Dio();
  final int _amount = 10;

  BuildContext context;
  List? questions;
  int _currentQuestionCount = 0;
  int _amountCorrect = 0;
  String difficulty;

  GamePageProvider({required this.context, required this.difficulty}) {
    _dio.options.baseUrl = 'https://opentdb.com/api.php';
    _getQuestions();
  }

  Future<void> _getQuestions() async {
    var _response = await _dio.get(
      '',
      queryParameters: {
        'amount': _amount,
        'difficulty': difficulty.toLowerCase(),
        'type': 'boolean',
      },
    );

    var _data = jsonDecode(_response.toString());
    questions = _data['results'];
    notifyListeners();
  }

  String getCurrentQuestionText() {
    return questions![_currentQuestionCount]['question'];
  }

  void answerQuestion(String _answer) async {
    bool _isCorrect =
        questions![_currentQuestionCount]['correct_answer'] == _answer;
    _currentQuestionCount++;

    if (_isCorrect) {
      _amountCorrect++;
    }

    showDialog(
      context: context,
      builder: (BuildContext _context) {
        return AlertDialog(
          backgroundColor: _isCorrect ? Colors.green : Colors.red,
          title: Icon(
            _isCorrect ? Icons.check_circle : Icons.cancel_sharp,
            color: Colors.white,
          ),
        );
      },
    );

    await Future.delayed(const Duration(seconds: 1));
    Navigator.pop(context);

    if (_currentQuestionCount == _amount) {
      endGame();
    } else {
      notifyListeners();
    }
  }

  Future<void> endGame() async {
    showDialog(
      context: context,
      builder: (BuildContext _context) {
        return AlertDialog(
          backgroundColor: Colors.blue,
          title: const Text(
            'Game is finished!',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          content: Text(
            'Score: $_amountCorrect/$_amount',
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );

    await Future.delayed(const Duration(seconds: 2));
    Navigator.pop(context);
    Navigator.pop(context);
  }
}
