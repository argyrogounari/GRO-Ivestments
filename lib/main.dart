import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaithon/1home/first_home.dart';
import 'package:hackaithon/1home/second_home.dart';
import 'package:hackaithon/2markets/markets.dart';
import 'package:hackaithon/3portfolio/portfolio.dart';
import 'package:hackaithon/4donate/donate.dart';
import 'package:hackaithon/5more/more.dart';
import 'package:hackaithon/local_database.dart';
import 'package:hackaithon/onboarding/7recommended.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // Set your desired background color here
      ),
      home: BottomNavigationBarApp(
        isFirstHome: true,
      ),
    );
  }
}

class BottomNavigationBarApp extends StatefulWidget {
  final bool isFirstHome;

  BottomNavigationBarApp({required this.isFirstHome});

  @override
  _BottomNavigationBarAppState createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _selectedIndex = 0;
  bool _isFirstHome = true;

  @override
  void initState() {
    super.initState();
    _isFirstHome = widget.isFirstHome;
  }

  static final List<Widget> _firstWidgetOptions = <Widget>[
    FirstHomePage(),
    MarketsPage(),
    PortfolioPage(),
    DonatePage(),
    MorePage(),
  ];

  static final List<Widget> _secondWidgetOptions = <Widget>[
    SecondHomePage(),
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
        children: _isFirstHome ? _firstWidgetOptions : _secondWidgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
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
