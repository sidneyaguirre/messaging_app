import 'package:flutter/material.dart';

import 'package:mock_messaging_app/mock_messaging.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    required this.barAnimation,
    super.key,
    this.onDestinationSelected,
    required this.selectedIndex,
  });

  final BarAnimation barAnimation;
  final ValueChanged<int>? onDestinationSelected;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: Colors.white,
      child: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        destinations: destinations.map<NavigationDestination>((d) {
          return NavigationDestination(
            icon: Icon(d.icon),
            label: d.label,
          );
        }).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
