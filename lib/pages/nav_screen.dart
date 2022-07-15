import 'package:flutter/material.dart';

import './home_screen.dart';

import '../widgets/custom_tab_bar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> _pages = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold()
  ];

  final Map<String, IconData> _icons = {
    "Search": Icons.search,
    "Messages": Icons.chat,
    "Account": Icons.person,
    "Post Ad": Icons.attach_file
  };

  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: SafeArea(
          child: CustomTabBar(
            selectedTab: _selectedIndex,
            icons: _icons,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      )
    );
  }
}
