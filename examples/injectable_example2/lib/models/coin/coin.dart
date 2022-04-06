class Coin {
  String id;
  String symbol;
  String name;
  num price;

  Coin({
    required this.id,
    required this.symbol,
    required this.name,
    required this.price,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      price: json['current_price'],
    );
  }
}
