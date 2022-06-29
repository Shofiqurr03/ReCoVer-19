import 'package:final_v2/Screens/Home_Screen.dart';
import 'package:flutter/material.dart';

import 'call.dart';

class Bottombar extends StatefulWidget { // used for bottom tap menu item
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;

  final screens = [MainPage(), Covid_help_desk()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Color(0xbef5f1f1),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        iconSize: 30.0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.call), label: 'Covid Helpline'),
        ],
      ),
    );
  }
}
