import 'package:flutter/material.dart';
import 'package:frivia/pages/game_page.dart';
import 'package:frivia/providers/game_page_provider.dart';
import 'package:frivia/widgets/slider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  GamePageProvider? _pageProvider;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_context) => GamePageProvider(context: context),
      child: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      _pageProvider = _context.watch<GamePageProvider>();

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
                  SliderWidget(pageProvider: _pageProvider!),
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

  Widget _difficultyWidget() {
    return Text(
      _pageProvider!.getDifficulty(),
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
              return GamePage();
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
}
