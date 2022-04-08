import 'package:bloc/bloc.dart';
import 'package:bloc_example/models/count.dart';

class CountCubit2 extends Cubit<Count> {
  CountCubit2() : super(_count);

  static final Count _count = Count(amount: 0);

  Future<void> increment() async {
    await Future.delayed(const Duration(seconds: 1));
    _count.amount++;
    emit(Count(amount: _count.amount));
  }

  Future<void> decrement() async {
    await Future.delayed(const Duration(seconds: 1));
    _count.amount--;
    emit(Count(amount: _count.amount));
  }
}
