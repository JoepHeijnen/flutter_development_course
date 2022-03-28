import 'dart:math';
import 'package:dio/dio.dart';

double calculateBMI(int height, int weight) {
  return 703 * (weight / pow(height, 2));
}

Future<double> calculateBMIAsync(Dio _dio) async {
  Response _result = await _dio.get('https://jsonkeeper.com/b/AKFA');
  Map _data = _result.data;

  return calculateBMI(
    _data['Sergio Ramos'][0],
    _data['Sergio Ramos'][1],
  );
}
