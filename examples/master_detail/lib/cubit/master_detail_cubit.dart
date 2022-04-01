import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:master_detail/models/item.dart';
import 'package:master_detail/services/items_service.dart';
import 'package:meta/meta.dart';

part 'master_detail_state.dart';

class MasterDetailCubit extends Cubit<MasterDetailState> {
  final ItemsService _itemsService = GetIt.instance.get<ItemsService>();

  MasterDetailCubit() : super(NoItemsState());

  Future<void> loadItems() async {
    emit(LoadingItemsState());
    await Future.delayed(const Duration(seconds: 1));
    List<Item> _items = _itemsService.getGroups();
    emit(LoadedItemsState(_items, _items[0]));
  }

  void selectItem(Item _item) {
    List<Item> _items = _itemsService.getGroups();
    emit(LoadedItemsState(_items, _item));
  }
}
