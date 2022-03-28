import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibmi/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('end-to-end app test', () {
    Finder _weightIncrementButton = find.byKey(const Key('weight_plus'));
    Finder _ageIncrementButton = find.byKey(const Key('age_plus'));
    Finder _calculateBMIButton = find.byType(CupertinoButton);

    testWidgets(
        'Given app is ran when height, age data input and calculateBMI button pressed then correct correct BMI returned',
        (tester) async {
      app.main();

      await tester.pumpAndSettle();
      await tester.tap(_weightIncrementButton);
      await tester.pumpAndSettle();
      await tester.tap(_ageIncrementButton);
      await tester.pumpAndSettle();
      await tester.tap(_calculateBMIButton);
      await tester.pumpAndSettle();

      final Finder _resultText = find.text('Normal');
      expect(_resultText, findsOneWidget);
    });
  });
}
