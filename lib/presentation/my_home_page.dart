import 'package:flutter/material.dart';
import 'animated_bottom_navigation_bar.dart';
import 'navigation_pages.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Bottom Navigation Bar'),
      ),
      body: Center(
        child: navigationPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
