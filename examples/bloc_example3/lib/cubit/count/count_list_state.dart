part of 'count_list_cubit.dart';

@immutable
class CountListState {
  List<Count> items;

  CountListState({required this.items});

  int getTotal() {
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
  }
}
