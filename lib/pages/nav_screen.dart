import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _pages = const [
    HomeScreen(),
    CupertinoPageScaffold(child: SizedBox.shrink()),
    CupertinoPageScaffold(child: SizedBox.shrink()),
    CupertinoPageScaffold(child: SizedBox.shrink()),
  ];

  final Map<String, IconData> _icons = {
    "Search": CupertinoIcons.search,
    "Messages": CupertinoIcons.chat_bubble_2,
    "Account": CupertinoIcons.person_alt_circle,
    "Post Ad": CupertinoIcons.pin
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        iconSize: 26.0,
        activeColor: Colors.orange,
        items: _icons.map((title, icon) {
          return MapEntry(title, BottomNavigationBarItem(
            icon: Icon(
              icon,
            ),
            label: title
          ));
        }).values.toList(),
      ),
      tabBuilder: (ctx, index) {
        return CupertinoTabView(
          builder: (context) {
            return _pages[index];
          },
        );
      },
    );
  }
}
