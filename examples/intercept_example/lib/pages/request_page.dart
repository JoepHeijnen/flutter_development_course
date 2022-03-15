import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/services/crypto_service.dart';

class RequestPage extends StatelessWidget {
  final CryptoService _cryptoService = GetIt.instance.get<CryptoService>();

  RequestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interceptor'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _bitcoinPrice(),
            _cardanoPrice(),
          ],
        ),
      ),
    );
  }

  Widget _bitcoinPrice() {
    return FutureBuilder(
      future: _cryptoService.getCrypto('bitcoin'),
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        if (_snapshot.hasData) {
          Map _data = jsonDecode(_snapshot.data.toString());
          num _price = _data['bitcoin']['eur'];

          return Center(
            child: Text(
              'Bitcoin: ${_price.toString()}',
              style: const TextStyle(fontSize: 25),
            ),
          );
        } else if (_snapshot.hasError) {
          return Center(child: Text(_snapshot.error.toString()));
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }

  Widget _cardanoPrice() {
    return FutureBuilder(
      future: _cryptoService.getCrypto('cardano'),
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        if (_snapshot.hasData) {
          Map _data = jsonDecode(_snapshot.data.toString());
          num _price = _data['cardano']['eur'];

          return Center(
            child: Text(
              'Cardano: ${_price.toString()}',
              style: const TextStyle(fontSize: 25),
            ),
          );
        } else if (_snapshot.hasError) {
          return const Center(child: Text('Couldnt load Cardano'));
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
