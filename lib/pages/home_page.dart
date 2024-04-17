import 'package:coffe_app/componentes/myNavBar.dart';
import 'package:coffe_app/constatnts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyNavBar(onTabChange: (int index) {  },),
    );
  }
}
