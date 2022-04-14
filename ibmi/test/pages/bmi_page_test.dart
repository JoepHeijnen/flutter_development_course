import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibmi/pages/bmi_page.dart';

void main() {
  testWidgets('Given weightInfoCard when user click + button then weight increment by 1',
      (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _weightIncrementButton = find.byKey(const Key('weight_plus'));

    await tester.tap(_weightIncrementButton);
    await tester.pump();

    Finder _text = find.text('161');
    expect(_text, findsOneWidget);
  });

  testWidgets('Given weightInfoCard when user click - button then weight decrement by 1',
      (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _weightDecrementButton = find.byKey(const Key('weight_minus'));

    await tester.tap(_weightDecrementButton);
    await tester.pump();

    Finder _text = find.text('159');
    expect(_text, findsOneWidget);
  });

  testWidgets('Given ageInfoCard when user click + button then age increment by 1', (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _ageIncrementButton = find.byKey(const Key('age_plus'));

    await tester.tap(_ageIncrementButton);
    await tester.pump();

    Finder _text = find.text('26');
    expect(_text, findsOneWidget);
  });

  testWidgets('Given ageInfoCard when user click - button then age decrement by 1', (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _ageDecrementButton = find.byKey(const Key('age_minus'));

    await tester.tap(_ageDecrementButton);
    await tester.pump();

    Finder _text = find.text('24');
    expect(_text, findsOneWidget);
  });

  testWidgets('Given heightInfoCard when user slide then height increment by 1', (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _heightSlider = find.byKey(const Key('height_slider'));

    await tester.drag(_heightSlider, const Offset(2, 0));
    await tester.pump();

    Finder _text = find.text('72');
    expect(_text, findsOneWidget);
  });
}
