import 'package:flutter/material.dart';
import 'package:gritty/history_screen.dart';
import 'package:gritty/home_screen.dart';
import 'package:gritty/import_screen.dart';
import 'package:gritty/settings_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  List<String> name = ['Home', 'History', 'Import', 'Settings'];

  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          'assets/images/home.png',
        ),
      ),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/clock.png')),
        label: 'History'),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/import.png')),
        label: 'Import'),
    const BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/images/settings.png')), label: 'Settings'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: PageView(
        reverse: true,
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomeScreen(),
          HistoryScreen(),
          ImportScreen(),
          SettingsScreen()
        ],
      ),
      bottomNavigationBar: _currentIndex == 4
          ? null
          : Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color(0xFFB2B2B2),
                spreadRadius: 0,
                blurRadius: 40.0,
                offset: Offset(20, 0)
            )
          ],
        ),
            child: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        elevation: 0,
        selectedItemColor: const Color(0xFF5D387F),
        selectedIconTheme: const IconThemeData(size: 30),
        currentIndex: _currentIndex,
        items: _bottomNavigationBarItems,
        backgroundColor: const Color(0xFFF6F6F6),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
            // _pageController.jumpTo(index.toDouble());
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOutSine);
        },
      ),
          ),
    );
  }
}
