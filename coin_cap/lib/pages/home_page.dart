import 'dart:convert';
import 'package:coin_cap/pages/details_page.dart';
import 'package:coin_cap/services/http_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? _deviceWidth, _deviceHeight;
  String? _selectedCoin = 'bitcoin';

  HTTPService? _httpService;

  @override
  void initState() {
    super.initState();
    _httpService = GetIt.instance.get<HTTPService>();
  }

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: _selectedCoinDropdown()),
              Expanded(flex: 7, child: _dataWidgets()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectedCoinDropdown() {
    List<String> _coins = [
      "bitcoin",
      "ethereum",
      "tether",
      "cardano",
      "ripple"
    ];
    List<DropdownMenuItem<String>> _items = _coins
        .map((e) => DropdownMenuItem(
              child: Text(
                e,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: e,
            ))
        .toList();

    return Container(
      margin: const EdgeInsets.all(16),
      child: DropdownButton(
        value: _selectedCoin,
        items: _items,
        onChanged: (dynamic _value) {
          setState(() {
            _selectedCoin = _value;
          });
        },
        dropdownColor: const Color.fromRGBO(83, 88, 206, 1.0),
        iconSize: 30,
        icon: const Icon(Icons.arrow_drop_down_sharp, color: Colors.white),
        underline: Container(),
      ),
    );
  }

  Widget _dataWidgets() {
    return FutureBuilder(
      future: _httpService!.get('/coins/$_selectedCoin'),
      builder: (BuildContext _context, AsyncSnapshot _snapshot) {
        if (_snapshot.hasData) {
          Map _data = jsonDecode(_snapshot.data.toString());
          String _image = _data['image']['large'];
          num _price = _data['market_data']['current_price']['eur'];
          num _change = _data['market_data']['price_change_percentage_24h'];
          String _description = _data['description']['en'];
          Map _exchangeRates = _data['market_data']['current_price'];

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onDoubleTap: () {
                  Navigator.push(
                    _context,
                    MaterialPageRoute(builder: (BuildContext _context) {
                      return DetailsPage(rates: _exchangeRates);
                    }),
                  );
                },
                child: _coinImageWidget(_image),
              ),
              _currentPriceWidget(_price),
              _percentageChangeWidget(_change),
              _descriptionCardWidget(_description)
            ],
          );
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

  Widget _coinImageWidget(String _imageURL) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      width: _deviceWidth! * 0.15,
      height: _deviceHeight! * 0.15,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_imageURL),
        ),
      ),
    );
  }

  Widget _currentPriceWidget(num _rate) {
    return Text(
      '${_rate.toStringAsFixed(2)} Euro',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _percentageChangeWidget(num _change) {
    return Text(
      '${_change.toString()}%',
      style: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  Widget _descriptionCardWidget(String _description) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.all(16),
      height: _deviceHeight! * 0.5,
      color: const Color.fromRGBO(83, 88, 206, 1.0),
      child: Text(
        _description,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
