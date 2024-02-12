import 'package:flutter/material.dart';
import 'package:travel_helper_next/ui/widgets/core/custom_appbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Поиск", icon: Icons.search, iconSize: 36,),
      body:Placeholder()
    );
  }
}
