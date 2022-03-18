import 'package:flutter/material.dart';
import 'package:mvvm_example/view_models/coin_list_view_model.dart';
import 'package:mvvm_example/view_models/coin_view_model.dart';
import 'package:provider/provider.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({Key? key}) : super(key: key);

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  final CoinListViewModel _viewModel = CoinListViewModel();

  @override
  void initState() {
    _viewModel.getCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coins'),
      ),
      body: SafeArea(
        child: ChangeNotifierProvider<CoinListViewModel>(
          create: ((context) => _viewModel),
          child: Consumer<CoinListViewModel>(
            builder: (context, value, _) {
              return _coinsListView(value);
            },
          ),
        ),
      ),
    );
  }

  Widget _coinsListView(CoinListViewModel viewModel) {
    LoadingStatus loadingStatus = viewModel.loadingStatus;
    List<CoinViewModel> coins = viewModel.coins;

    if (loadingStatus == LoadingStatus.searching) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (loadingStatus == LoadingStatus.empty) {
      return const Center(
        child: Text('No results found'),
      );
    }

    return ListView.builder(
      itemCount: coins.length,
      itemBuilder: ((_context, index) {
        CoinViewModel _coin = coins[index];

        return ListTile(
          title: Text(_coin.symbol),
          subtitle: Text(_coin.name),
          trailing: Text(_coin.price),
        );
      }),
    );
  }
}
