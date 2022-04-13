import 'package:bloc/bloc.dart';
import 'package:bloc_example3/models/count.dart';
import 'package:meta/meta.dart';

part 'count_list_state.dart';

class CountListCubit extends Cubit<CountListState> {
  CountListCubit() : super(CountListState(items: const []));

  Future<void> getList() async {
    emit(
      CountListState(
        items: [
          ...state.items,
          Count(amount: 1, type: Type.increment, previousAmount: state.getTotal())
        ],
      ),
    );
  }

  Future<void> increment() async {
    emit(
      CountListState(
        items: [
          ...state.items,
          Count(amount: 1, type: Type.increment, previousAmount: state.getTotal())
        ],
      ),
    );
  }

  Future<void> decrement() async {
    emit(
      CountListState(
        items: [
          ...state.items,
          Count(amount: 1, type: Type.decrement, previousAmount: state.getTotal())
        ],
      ),
    );
  }

  Future<void> clear() async {
    emit(CountListState(items: const []));
  }
}
