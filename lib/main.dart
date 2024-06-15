import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaithon/1home/home.dart';
import 'package:hackaithon/2markets/markets.dart';
import 'package:hackaithon/3portfolio/portfolio.dart';
import 'package:hackaithon/4donate/donate.dart';
import 'package:hackaithon/5more/more.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      home: BottomNavigationBarApp(),
    );
  }
}

class BottomNavigationBarApp extends StatefulWidget {
  @override
  _BottomNavigationBarAppState createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MarketsPage(),
    PortfolioPage(),
    DonatePage(),
    MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: _selectedIndex == 0 ? Color(0xFF46A771) : Colors.grey,
              width: 30,
              height: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/markets.svg',
              color: _selectedIndex == 1 ? Color(0xFF46A771) : Colors.grey,
              width: 30,
              height: 30,
            ),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/portfolio.svg',
              color: _selectedIndex == 2 ? Color(0xFF46A771) : Colors.grey,
              width: 24,
              height: 24,
            ),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/donate.svg',
              color: _selectedIndex == 3 ? Color(0xFF46A771) : Colors.grey,
              width: 30,
              height: 30,
            ),
            label: 'Donate',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/more.svg',
              color: _selectedIndex == 4 ? Color(0xFF46A771) : Colors.grey,
              width: 30,
              height: 30,
            ),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF46A771),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
