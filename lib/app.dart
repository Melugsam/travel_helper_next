import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/ui/screens/auth/login_screen.dart';
import 'package:travel_helper_next/ui/screens/auth/register_screen.dart';
import 'package:travel_helper_next/ui/screens/search/search_map_screen.dart';
import 'package:travel_helper_next/ui/screens/welcome/welcome_screen.dart';

final GoRouter _route = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => WelcomeScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    builder: (context, state) => RegisterScreen(),
  ),
  GoRoute(
    path: '/search',
    builder: (context, state) => SearchMapScreen(),
  )
]);

class TravelHelperApp extends StatelessWidget {
  const TravelHelperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _route.routerDelegate,
      routeInformationParser: _route.routeInformationParser,
      routeInformationProvider: _route.routeInformationProvider,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontFamily: 'Manrope', fontSize: 32.0, fontWeight: FontWeight.w700),
            bodyMedium: TextStyle(fontFamily: 'Manrope', fontSize: 24.0, fontWeight: FontWeight.w700),
            bodySmall: TextStyle(fontFamily: 'Manrope', fontSize: 16.0),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
