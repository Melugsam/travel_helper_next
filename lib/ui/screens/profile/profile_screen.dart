import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_appbar.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_bottom_navigator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Профиль",
        icon: Icons.apps_sharp,
        iconSize: 36,
      ),
      body: Placeholder(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 2,
      ),
    );
  }
}
