part of 'master_detail_cubit.dart';

@immutable
abstract class MasterDetailState {}

class LoadingItemsState extends MasterDetailState {}

class NoItemsState extends MasterDetailState {}

class LoadedItemsState extends MasterDetailState {
  final List<Item> elements;
  final Item selectedElement;

  LoadedItemsState(this.elements, this.selectedElement);
}
