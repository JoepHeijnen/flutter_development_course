import 'package:dio/dio.dart';
import 'package:generation_example2/generated/lib/api.dart';

class CryptoService {
  CryptoService();
  final _dio = Dio(BaseOptions(baseUrl: 'https://api.coingecko.com/api/v3'));

  Future<dynamic> getCoins() async {
    try {
      Response? _response = await _dio
          .get('/coins/markets', queryParameters: {'vs_currency': 'eur'});
      List _data = _response.data as List;
      List<Coin?> _coins = _data.map((coin) => Coin.fromJson(coin)).toList();
      return _coins;
    } catch (e) {
      throw Exception('Something went wrong in CryptoService');
    }
  }
}
