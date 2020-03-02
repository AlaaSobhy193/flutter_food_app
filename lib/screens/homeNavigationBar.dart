import 'package:flutter/material.dart';
import 'package:flutter_food_app/screens/discover.dart';
import 'package:flutter_food_app/screens/home.dart';
import 'package:flutter_food_app/screens/profile.dart';
import 'package:flutter_food_app/widgets/homeRecipesList.dart';

class NavigationSheet extends StatefulWidget {
  @override
  _NavigationSheetState createState() => _NavigationSheetState();
}

class _NavigationSheetState extends State<NavigationSheet> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage(),
    Discover(),
    ResturantsList(),
    MyProfilePage(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange[300],
        selectedFontSize: 20.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Discover'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), title: Text('Favorites')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
      ),
    );
  }
}
