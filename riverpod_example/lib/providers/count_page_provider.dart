import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/count.dart';

final counterProvider = StateNotifierProvider<CounterStateNotifier, Count>(
    (ref) => CounterStateNotifier(Count(amount: 0, type: 'unknown')));

class CounterStateNotifier extends StateNotifier<Count> {
  CounterStateNotifier(Count count) : super(count);

  void increment() {
    state = Count(amount: state.amount + 1, type: 'increment');
  }

  void decrement() {
    state = Count(amount: state.amount - 1, type: 'decrement');
  }
}
