import 'package:flutter/material.dart';
import 'package:unguided/Beranda.dart';
import 'package:unguided/profil.dart';
import 'package:unguided/search.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  int _currentindex = 0;
  static List<Widget> _page = <Widget>[
    MyWidget(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentindex,
        selectedItemColor: const Color.fromARGB(255, 5, 162, 246),
        onTap: _onTappedItem,
      ),
    );
  }
}
