import 'package:flutter/material.dart';
import 'pages/page1_home/beranda.dart';
import 'pages/page2_destinasi/destinasi.dart';
import 'pages/page3_informasi/informasi.dart';
import 'pages/page4_lainnya/lainnya.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Beranda(),
    Destinasi(),
    Informasi(),
    Lainnya(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Destinasi',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.archive,
          ),
          label: 'Informasi',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_open,
          ),
          label: 'Lainnya',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue[600],
      onTap: _onItemTapped,
    );
  }
}
