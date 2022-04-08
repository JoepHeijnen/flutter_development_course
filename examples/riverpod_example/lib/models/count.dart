enum Type {
  unknown,
  increment,
  decrement,
}

class Count {
  int amount;
  Type type = Type.unknown;
  int previousAmount = 0;

  Count({required this.amount, required this.type, required this.previousAmount});

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

  String getChange() {
    switch (type) {
      case Type.increment:
        return '(+ $amount)';
      case Type.decrement:
        return '(- $amount)';
      default:
        return '';
    }
  }
}
