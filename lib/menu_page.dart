import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'order_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key, required this.menuItems}) : super(key: key);

  final List<MenuItem> menuItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menuItems[index].name),
            trailing: Text("\$${menuItems[index].price.toStringAsFixed(2)}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        OrderPage(menuItem: menuItems[index])),
              );
            },
          );
        },
      ),
    );
  }
}
