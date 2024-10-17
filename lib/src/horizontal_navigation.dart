import 'package:cactus/src/plantdetails.dart';
import 'package:cactus/src/plantlist.dart';
import 'package:cactus/src/signin.dart';
import 'package:flutter/material.dart';

import 'about.dart';

class HorizontalNavigationHomePage extends StatefulWidget {
  @override
  _HorizontalNavigationHomePageState createState() =>
      _HorizontalNavigationHomePageState();
}

class _HorizontalNavigationHomePageState
    extends State<HorizontalNavigationHomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plants App'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          const SignInScreen(),
          PlantListScreen(),
          const AboutScreen(),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.login), label: 'Вход'),
            BottomNavigationBarItem(icon: Icon(Icons.local_florist), label: 'Растения'),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: 'О приложении'),
          ],
        ),
    );
  }
}
