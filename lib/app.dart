import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_helper_next/bloc/auth/login/login_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/hotels/hotels_info_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/monuments/monuments_info_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/monuments/photos/monuments_photos_bloc.dart';
import 'package:travel_helper_next/bloc/navigation/results/weather/weather_info_bloc.dart';
import 'package:travel_helper_next/ui/screens/auth/login_screen.dart';
import 'package:travel_helper_next/ui/screens/auth/register_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/navigation_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/profile/profile_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/results/results_screen.dart';
import 'package:travel_helper_next/ui/screens/navigation/search/search_map_screen.dart';
import 'package:travel_helper_next/ui/screens/welcome/welcome_screen.dart';

import 'bloc/auth/register/register_bloc.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter _route = GoRouter(navigatorKey: _rootNavigatorKey, routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const WelcomeScreen(),
  ),
  GoRoute(
    path: '/login',
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const LoginScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) => CustomTransitionPage(
      key: state.pageKey,
      child: const RegisterScreen(),
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  ),
  StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/search',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: SearchScreen()),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/results',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ResultsScreen()),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: ProfileScreen()),
          )
        ])
      ])
]);

class TravelHelperApp extends StatelessWidget {
  const TravelHelperApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<RegisterBloc>(
          create: (context) => RegisterBloc(),
        ),
        BlocProvider<HotelsInfoBloc>(
          create: (context) => HotelsInfoBloc(),
        ),
        BlocProvider<WeatherInfoBloc>(
          create: (context) => WeatherInfoBloc(),
        ),
        BlocProvider<MonumentsInfoBloc>(
          create: (context) => MonumentsInfoBloc(),
        ),
        BlocProvider<MonumentsPhotosBloc>(
          create: (context) => MonumentsPhotosBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _route.routerDelegate,
        routeInformationParser: _route.routeInformationParser,
        routeInformationProvider: _route.routeInformationProvider,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700),
              bodyMedium: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700),
              bodySmall: TextStyle(fontFamily: 'Manrope', fontSize: 16.0),
            )),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
