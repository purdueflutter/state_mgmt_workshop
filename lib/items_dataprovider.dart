import 'package:state_mgmt_workshop/item_model.dart';

class ItemsDataProvider {
  final List<Item> _items = [];

  List<Item> getItems() {
    return _items;
  }

  Item? getItem(String name) {
    try {
      return _items.firstWhere((element) => element.name == name);
    } catch (e) {
      return null;
    }
  }

  bool updateItem(Item item) {
    try {
      final ind = _items.indexOf(item);
      _items[ind] = item;
      return true;
    } catch (e) {
      return false;
    }
  }

  void addItem(Item item) {
    _items.add(item);
  }

  void deleteItem(String name) {
    _items.removeWhere((element) => element.name == name);
  }
}
