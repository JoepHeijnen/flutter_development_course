import "package:injectable_example2/models/coin/coin.dart";

class CoinViewModel {
  final Coin _coin;

  CoinViewModel({required Coin coin}) : _coin = coin;

  String get id {
    return _coin.id;
  }

  String get symbol {
    return _coin.symbol.toUpperCase();
  }

  String get name {
    return _coin.name;
  }

  String get price {
    return "€ ${_coin.price.toString()}";
  }
}
