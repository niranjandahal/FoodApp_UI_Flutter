import 'package:flutter/material.dart';
import 'package:r03foodui/UI/delivery.dart';
import 'package:r03foodui/UI/Settings.dart';
import 'package:r03foodui/UI/homeui.dart';
import 'package:r03foodui/UI/Carts.dart';

class pagemain extends StatefulWidget {
  const pagemain({super.key});

  @override
  State<pagemain> createState() => _pagemainState();
}

class _pagemainState extends State<pagemain> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeUi(),
    CartsUi(),
    DeliveryUi(),
    SettingUi(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //customscrollview for scrollale
      
      backgroundColor: Colors.grey.shade200,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 242, 170, 25)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout),
              label: 'Carts',
              backgroundColor: Color.fromARGB(255, 37, 165, 46)),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Delivery',
            backgroundColor: Color.fromARGB(255, 249, 145, 145),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Color.fromARGB(255, 46, 84, 62)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
