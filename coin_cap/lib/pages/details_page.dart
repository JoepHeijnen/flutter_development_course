import 'package:coin_cap/models/rate.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map rates;

  DetailsPage({Key? key, required this.rates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _listView(),
      ),
    );
  }

  Widget _listView() {
    List _rates =
        rates.entries.map((e) => Rate(name: e.key, amount: e.value)).toList();

    return ListView.builder(
      itemCount: _rates.length,
      itemBuilder: (BuildContext _context, int _index) {
        Rate rate = _rates[_index];

        return ListTile(
          title: Text(
            rate.name.toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            rate.amount.toString(),
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
