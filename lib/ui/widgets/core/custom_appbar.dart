import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int currentIndex;
  final double? iconSize;
  late final String title;
  late final IconData? icon;

  CustomAppBar({
    Key? key,
    required this.currentIndex,
    this.iconSize,
  }) : super(key: key) {
    switch (currentIndex){
      case 0:
        title ="Поиск";
        icon = Icons.search;
        break;
      case 1:
        title ="Результаты";
        icon = Icons.apps_sharp;
        break;
      case 2:
        title ="Профиль";
        icon = Icons.person;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.bodyLarge!.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                  fontWeight: Theme.of(context).textTheme.bodyLarge!.fontWeight)),
          if (icon != null)
            const SizedBox(
              width: 4,
            ),
          if (icon != null) Icon(icon, size: iconSize ?? 24),
        ],
      ),
      backgroundColor: const Color.fromRGBO(245, 241, 254, 1.0),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
