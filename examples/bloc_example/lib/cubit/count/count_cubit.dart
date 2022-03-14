import 'package:bloc/bloc.dart';
import 'package:bloc_example/models/count.dart';
import 'package:meta/meta.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountInitial());

  final Count _count = Count(amount: 0);

  int getAmount() => _count.amount;

  Future<void> increment() async {
    emit(CountChanged());
    await Future.delayed(const Duration(seconds: 1));
    _count.amount++;
    emit(CountIncrement(count: _count));
  }

  Future<void> decrement() async {
    emit(CountChanged());
    await Future.delayed(const Duration(seconds: 1));
    _count.amount--;
    emit(CountDecrement(count: _count));
  }
}
