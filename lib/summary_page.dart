import 'package:flutter/material.dart';
import 'order.dart';

class SummaryPage extends StatelessWidget {
  final Order order;

  const SummaryPage({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPrice = order.menuItem.price * order.quantity;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Summary"),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(order.menuItem.name),
            const SizedBox(height: 16.0),
            Text("Jumlah: ${order.quantity}"),
            const SizedBox(height: 16.0),
            Text("Note: ${order.note}"),
            Text("Total Price: \$${totalPrice.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
