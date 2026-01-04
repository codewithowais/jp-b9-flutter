import 'package:facebook/views/screen1.dart';
import 'package:facebook/views/screen2.dart';
import 'package:facebook/views/screen3.dart';
import 'package:facebook/views/screen4.dart';
import 'package:flutter/material.dart';

class InstaCloneBottom extends StatefulWidget {
  const InstaCloneBottom({super.key});

  @override
  State<InstaCloneBottom> createState() => _InstaCloneBottomState();
}

class _InstaCloneBottomState extends State<InstaCloneBottom> {
  int _selectedIndex = 0;
  List screens = [Screen1(), Screen2(), Screen3(), Screen4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          _selectedIndex = value;
          print(value);
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.card_travel),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
