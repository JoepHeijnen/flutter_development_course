class Item {
  final int id;
  final String name;
  final String detail;

  Item(this.id, this.name, this.detail);

  factory Item.fromItem(Item item) {
    return Item(item.id, item.name, item.detail);
  }
}
