import 'package:flutter/material.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context)
          .colorScheme
          .primary
          .withOpacity(0.1), // primary_color с интенсивностью 100
      child:
          const Placeholder(), // Замените Placeholder на ваш реальный контент
    );
  }
}
