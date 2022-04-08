import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/count.dart';

final countListProvider = StateNotifierProvider<CountList, List<Count>>((ref) {
  return CountList([]);
});

final totalCountProvider = Provider<int>((ref) {
  var items = ref.watch(countListProvider);
  int total = 0;

  for (var item in items) {
    if (item.type == Type.increment) {
      total += item.amount;
    }

    if (item.type == Type.decrement) {
      total -= item.amount;
    }
  }

  return total;
});

class CountList extends StateNotifier<List<Count>> {
  CountList([List<Count>? initialTodos]) : super(initialTodos ?? []);

  void increment(int previousAmount) async {
    await Future.delayed(const Duration(seconds: 1));
    state = [...state, Count(amount: 1, type: Type.increment, previousAmount: previousAmount)];
  }

  void decrement(int previousAmount) async {
    await Future.delayed(const Duration(seconds: 1));
    state = [...state, Count(amount: 1, type: Type.decrement, previousAmount: previousAmount)];
  }

  void clear() {
    state = [];
  }
}
