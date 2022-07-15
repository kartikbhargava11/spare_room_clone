import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final Map<String, IconData> icons;
  final int selectedTab;
  final Function(int) onTap;

  const CustomTabBar({
    required this.icons,
    required this.selectedTab,
    required this.onTap,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicatorColor: Colors.transparent,
      indicatorPadding: EdgeInsets.zero,
      labelColor: Colors.orange,
      unselectedLabelColor: Colors.black,
      tabs: icons.map((title, icon) {
        return MapEntry(title, Tab(
          icon: Icon(
            icon,
            size: 30.0,
          ),
          text: title,
        ));
      }).values.toList(),
    );
  }
}
