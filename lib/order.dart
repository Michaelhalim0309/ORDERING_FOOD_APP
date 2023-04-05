import 'menu_item.dart';

class Order {
  MenuItem menuItem;
  int quantity;
  final String note;

  Order({required this.menuItem, required this.quantity, required this.note});
}
