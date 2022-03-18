import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mvvm_example/models/coin/coin.dart';
import 'package:mvvm_example/models/services/crypto_service.dart';

class CoinRepository {
  final CryptoService _cryptoService = GetIt.instance.get<CryptoService>();

  CoinRepository();

  Future<List<Coin>> getCoins() async {
    Response? _response = await _cryptoService.getCoins();

    if (_response != null) {
      List _data = _response.data as List;
      List<Coin> _coins = _data.map((coin) => Coin.fromJson(coin)).toList();
      return _coins;
    }

    return [];
  }
}
