enum Type {
  unknown,
  increment,
  decrement,
}

class Count {
  int amount;
  Type type = Type.unknown;
  int? previousAmount;

  Count({required this.amount, required this.type, this.previousAmount});

  String getType() {
    switch (type) {
      case Type.increment:
        return 'Increment';
      case Type.decrement:
        return 'Decrement';
      default:
        return 'Unknown';
    }
  }
}
