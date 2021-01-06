import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/home/components/add.dart';
import 'package:foodie_flutter_app/screens/home/components/explore.dart';
import 'package:foodie_flutter_app/screens/home/components/home.dart';
import 'package:foodie_flutter_app/screens/home/components/profile.dart';

class HomeScreen extends StatefulWidget {
  static const ID = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    ExploreRecipe(),
    AddRecipe(),
    Profile()
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
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_user,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
