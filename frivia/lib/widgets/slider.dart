import 'package:flutter/material.dart';
import 'package:frivia/providers/game_page_provider.dart';

class SliderWidget extends StatefulWidget {
  GamePageProvider pageProvider;

  SliderWidget({Key? key, required this.pageProvider}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 2,
      divisions: 2,
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });

        if (value == 0.0) {
          widget.pageProvider.setDifficulty('easy');
        } else if (value == 1.0) {
          widget.pageProvider.setDifficulty('medium');
        } else {
          widget.pageProvider.setDifficulty('hard');
        }
      },
    );
  }
}
