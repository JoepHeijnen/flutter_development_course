import 'package:bloc/bloc.dart';
import 'package:bloc_example/models/count.dart';

class CountCubit2 extends Cubit<Count> {
  CountCubit2() : super(Count(amount: 0));

  Future<void> increment() async {
    state.amount++;
    emit(Count(amount: state.amount));
  }

  Future<void> decrement() async {
    state.amount--;
    emit(Count(amount: state.amount));
  }
}
