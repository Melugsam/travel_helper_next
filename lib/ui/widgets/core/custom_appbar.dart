import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? icon;
  final double? iconSize;

  const CustomAppBar({super.key, required this.title, this.icon, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon, size: iconSize ?? 24),
          if (icon != null)
            SizedBox(
              width: 4,
            ),
          Text(title,
              style: TextStyle(
                fontFamily: Theme.of(context).textTheme.bodyLarge!.fontFamily,
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                fontWeight: Theme.of(context).textTheme.bodyLarge!.fontWeight
              )),
        ],
      ),
      backgroundColor: Color.fromRGBO(245, 241, 254, 1.0),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
