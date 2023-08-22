import 'package:flutter/material.dart';
import 'package:fruitset/profile.dart';
import 'package:fruitset/purchase.dart';

import 'cart.dart';
import 'home.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int  _currentIndex = 0;
  final List<Widget> _pages = [
    Home(),
    Purchase(),
    Profile(),
    Cart(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("test"),
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        type:BottomNavigationBarType.fixed ,
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon:Icon(
            Icons.home_outlined,
          ),label:'Home', ),
          BottomNavigationBarItem(icon:Icon(
              Icons.credit_card_outlined
          ),label: 'Purchases'),
          BottomNavigationBarItem(icon:Icon(
              Icons.account_circle_outlined
          ),label: 'Account'),
          BottomNavigationBarItem(icon:Icon(
              Icons.add_shopping_cart_outlined
          ),label: 'cart'),
        ],
      ),
    );
  }
}
