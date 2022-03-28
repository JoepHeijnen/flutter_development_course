import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibmi/pages/bmi_page.dart';

void main() {
  testWidgets(
      'Given weightInfoCard when user click + button then weight increment by 1',
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

  testWidgets(
      'Given weightInfoCard when user click - button then weight decrement by 1',
      (tester) async {
    await tester.pumpWidget(
      const CupertinoApp(
        home: BMIPage(),
      ),
    );

    Finder _weightIncrementButton = find.byKey(const Key('weight_minus'));

    await tester.tap(_weightIncrementButton);
    await tester.pump();

    Finder _text = find.text('159');
    expect(_text, findsOneWidget);
  });
}
