part of 'count_cubit.dart';

@immutable
abstract class CountState {}

class CountInitial extends CountState {}

class CountChanged extends CountState {}

class CountIncrement extends CountState {
  final Count count;

  CountIncrement({required this.count});
}

class CountDecrement extends CountState {
  final Count count;

  CountDecrement({required this.count});
}
