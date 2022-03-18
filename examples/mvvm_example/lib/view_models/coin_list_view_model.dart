import 'package:flutter/material.dart';
import 'package:mvvm_example/models/coin/coin.dart';
import 'package:mvvm_example/models/coin/coin_repository.dart';
import 'package:mvvm_example/view_models/coin_view_model.dart';

enum LoadingStatus {
  completed,
  searching,
  empty,
  error,
}

class CoinListViewModel with ChangeNotifier {
  final CoinRepository _coinRepository = CoinRepository();
  LoadingStatus loadingStatus = LoadingStatus.searching;
  List<CoinViewModel> coins = [];

  CoinListViewModel();

  Future<void> getCoins() async {
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    try {
      List<Coin> _coins = await _coinRepository.getCoins();
      coins = _coins.map((coin) => CoinViewModel(coin: coin)).toList();

      if (coins.isEmpty) {
        loadingStatus = LoadingStatus.empty;
      } else {
        loadingStatus = LoadingStatus.completed;
      }
    } catch (e) {
      loadingStatus = LoadingStatus.error;
    }

    notifyListeners();
  }
}
