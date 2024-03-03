import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/ui/screens/auth/login_screen.dart';
import 'package:travel_helper_next/ui/screens/auth/register_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/navigation_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/profile/profile_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/results/results_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/search/search_map_screen.dart';
import 'package:travel_helper_next/ui/screens/welcome/welcome_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter _route = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
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
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) => NoTransitionPage(child: SearchScreen()),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/results',
            pageBuilder: (context, state) => NoTransitionPage(child: ResultsScreen()),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(child: ProfileScreen()),
          )
        ])
      ])
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
