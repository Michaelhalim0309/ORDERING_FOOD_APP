import 'package:flutter/material.dart';
import 'menu_item.dart';
import 'menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<MenuItem> menuItems = [
    MenuItem(name: "Nasi Goreng", price: 10000),
    MenuItem(name: "Buncis", price: 8000),
    MenuItem(name: "Es Teh Tawar", price: 5000),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ORDER FOOD',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MenuPage(menuItems: menuItems),
    );
  }
}
