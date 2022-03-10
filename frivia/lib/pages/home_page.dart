import 'package:flutter/material.dart';
import 'package:frivia/pages/game_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _difficulty = 0.0;

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      _titleWidget(),
                      _difficultyWidget(),
                    ],
                  ),
                  _sliderWidget(),
                  _startButton()
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _titleWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: const Text(
        'Frivia',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }

  String getDifficultyText() {
    if (_difficulty == 0.0) {
      return 'Easy';
    }

    if (_difficulty == 1.0) {
      return 'Medium';
    }

    return 'Hard';
  }

  Widget _difficultyWidget() {
    return Text(
      getDifficultyText(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  Widget _startButton() {
    return Builder(builder: (context) {
      return MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext _context) {
              return GamePage(difficulty: getDifficultyText());
            }),
          );
        },
        color: Colors.blue,
        minWidth: double.infinity,
        height: 60,
        child: const Text(
          'Start',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      );
    });
  }

  Widget _sliderWidget() {
    return Slider(
      value: _difficulty,
      max: 2,
      divisions: 2,
      onChanged: (double value) {
        setState(() {
          _difficulty = value;
        });
      },
    );
  }
}
