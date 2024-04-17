import 'package:coffe_app/componentes/myNavBar.dart';
import 'package:coffe_app/constatnts.dart';
import 'package:coffe_app/pages/cart_page.dart';
import 'package:coffe_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  navigationBetweenPages(int index) {
    setState(() {});
    _selectedIndex = index;
  }

  List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyNavBar(
        onTabChange: (int index) => navigationBetweenPages(index),
      ),
      body: pages[_selectedIndex],
    );
  }
}
