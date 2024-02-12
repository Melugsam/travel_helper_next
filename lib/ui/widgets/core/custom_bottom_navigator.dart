import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  const CustomBottomNavBar({super.key, required this.currentIndex});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavigatorState();
}

class _CustomBottomNavigatorState extends State<CustomBottomNavBar> {
  void _onItemTapped(BuildContext context, int index) {
    GoRouter router = GoRouter.of(context);
    setState(() {
      switch (index) {
        case 0:
          router.go("/search");
          break;
        case 1:
          router.go("/results");
          break;
        case 2:
          router.go("/profile");
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        child: BottomNavigationBar(
          onTap: (int index) {
            _onItemTapped(context, index);
          },
          currentIndex: widget.currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
            BottomNavigationBarItem(icon: Icon(Icons.apps_sharp), label: "Результаты"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          ],
        ));
  }
}

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  final String location;

  const CustomBottomNavBarItem({
    required this.location,
    required Widget icon,
    required String label,
  }) : super(icon: icon, label: label);
}
