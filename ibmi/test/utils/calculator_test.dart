import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ibmi/utils/calculator.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {}

void main() {
  test(
      'Give height and weight when CalculateBMI function invoked then correct BMI returned',
      () {
    const int height = 70;
    const int weight = 160;

    double bmi = calculateBMI(height, weight);

    expect(bmi, 22.955102040816328);
  });

  test('Given url when CalculateBMIAsync invoked then correct BMI returned',
      () async {
    final Dio dioMock = DioMock();

    when(() => dioMock.get('https://jsonkeeper.com/b/AKFA')).thenAnswer(
      (_) => Future.value(
        Response(
          requestOptions: RequestOptions(path: 'https://jsonkeeper.com/b/AKFA'),
          data: {
            "Sergio Ramos": [72, 165]
          },
        ),
      ),
    );

    double bmi = await calculateBMIAsync(dioMock);

    expect(bmi, 22.375578703703706);
  });
}
