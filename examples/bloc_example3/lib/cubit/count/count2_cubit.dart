import 'package:bloc/bloc.dart';

class CountCubit extends Cubit<int> {
  CountCubit() : super(0);

  Future<void> getCount() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(2);
  }

  Future<void> increment() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(state + 1);
  }

  Future<void> decrement() async {
    await Future.delayed(const Duration(seconds: 1));
    emit(state - 1);
  }
}
