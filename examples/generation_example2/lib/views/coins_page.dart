import 'package:flutter/material.dart';
import 'package:generation_example2/generated/lib/api.dart';
import 'package:generation_example2/services/crypto_service.dart';
import 'package:get_it/get_it.dart';

class CoinsPage extends StatefulWidget {
  const CoinsPage({Key? key}) : super(key: key);

  @override
  State<CoinsPage> createState() => _CoinsPageState();
}

class _CoinsPageState extends State<CoinsPage> {
  final CryptoService _cryptoService = GetIt.instance.get<CryptoService>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coins'),
      ),
      body: SafeArea(
        child: _coinsListView(),
      ),
    );
  }

  Widget _coinsListView() {
    return FutureBuilder(
      future: _cryptoService.getCoins(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          List<Coin?> _coins = snapshot.data as List<Coin?>;

          return ListView.builder(
            itemCount: _coins.length,
            itemBuilder: ((_context, index) {
              Coin? _coin = _coins[index];

              return ListTile(
                title: Text(_coin!.symbol),
                subtitle: Text(_coin.name),
                trailing: _coin.currentPrice != null
                    ? Text(_coin.currentPrice.toString())
                    : const Text('No Price'),
              );
            }),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
