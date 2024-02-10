import 'package:flutter/material.dart';
import 'package:travel_helper_next/screens/launch/launch_screen.dart';

class TravelHelperApp extends StatelessWidget {
  const TravelHelperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: LaunchScreen()));
  }
}
