import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const NavigationScreen({super.key, required this.navigationShell});

  void _goBranch(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.search), label: "Поиск"),
          NavigationDestination(icon: Icon(Icons.apps_sharp), label: "Результаты"),
          NavigationDestination(icon: Icon(Icons.person), label: "Профиль"),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
