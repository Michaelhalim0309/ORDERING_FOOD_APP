import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'order.dart';
import 'summary_page.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key, required this.menuItem}) : super(key: key);
  final MenuItem menuItem;

  @override
  OrderPageState createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  int quantity = 1;
  String note = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.menuItem.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("\$${widget.menuItem.price.toStringAsFixed(2)}"),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (quantity > 1) quantity--;
                    });
                  },
                ),
                Text(quantity.toString()),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Add a note',
              ),
              onChanged: (value) {
                note = value;
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Order order = Order(
                    menuItem: widget.menuItem, quantity: quantity, note: note);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SummaryPage(order: order)),
                );
              },
              child: const Text("Add to Order"),
            ),
          ],
        ),
      ),
    );
  }
}
