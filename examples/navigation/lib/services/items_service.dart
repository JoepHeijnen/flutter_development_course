import 'package:navigation/models/item.dart';

class ItemsService {
  ItemsService();

  List<Item> getGroups() {
    return [
      Item(1, 'Group item 1', 'Details'),
      Item(2, 'Group item 2', 'Details'),
      Item(3, 'Group item 3', 'Details'),
      Item(4, 'Group item 4', 'Details'),
      Item(5, 'Group item 5', 'Details'),
      Item(6, 'Group item 6', 'Details'),
      Item(7, 'Group item 7', 'Details'),
      Item(8, 'Group item 8', 'Details'),
      Item(9, 'Group item 9', 'Details'),
      Item(10, 'Group item 10', 'Details'),
    ];
  }
}
