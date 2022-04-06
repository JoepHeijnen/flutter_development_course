import "package:dio/dio.dart";
import "package:get_it/get_it.dart";
import "package:injectable_example2/models/coin/coin.dart";
import "package:injectable_example2/services/crypto_service.dart";

class CoinRepository {
  final CryptoService _cryptoService = GetIt.instance.get<CryptoService>();

  CoinRepository();

  Future<List<Coin>> getCoins() async {
    try {
      Response? _response = await _cryptoService.getCoins();
      List _data = _response!.data as List;
      List<Coin> _coins = _data.map((coin) => Coin.fromJson(coin)).toList();
      return _coins;
    } catch (e) {
      throw Exception("Something went wrong in CoinRepository");
    }
  }
}
