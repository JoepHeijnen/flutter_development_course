import 'package:flutter/material.dart';
import 'package:frivia/providers/game_page_provider.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  String difficulty;
  GamePageProvider? _pageProvider;

  GamePage({Key? key, required this.difficulty}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_context) =>
          GamePageProvider(context: context, difficulty: difficulty),
      child: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      _pageProvider = _context.watch<GamePageProvider>();

      if (_pageProvider!.questions != null) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: _gameUI(),
            ),
          ),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        );
      }
    });
  }

  Widget _gameUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _questionText(),
        Column(
          children: [
            _trueButton(),
            _falseButton(),
          ],
        ),
      ],
    );
  }

  Widget _questionText() {
    return Text(
      _pageProvider!.getCurrentQuestionText(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _trueButton() {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: MaterialButton(
        onPressed: () {
          _pageProvider!.answerQuestion('True');
        },
        color: Colors.green,
        minWidth: double.infinity,
        height: 60,
        child: const Text(
          'True',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  Widget _falseButton() {
    return MaterialButton(
      onPressed: () {
        _pageProvider!.answerQuestion('False');
      },
      color: Colors.red,
      minWidth: double.infinity,
      height: 60,
      child: const Text(
        'False',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
