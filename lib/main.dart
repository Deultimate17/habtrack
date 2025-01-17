import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habtrack/models/app_state_manager.dart';
import 'package:habtrack/screens/habit_screen.dart';
import 'package:habtrack/screens/register.dart';
import 'package:habtrack/screens/sign_in.dart';
import 'package:habtrack/screens/splash_screen.dart';
import 'package:habtrack/screens/suggestion.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppStateManager()..initializeApp(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appStateManager = Provider.of<AppStateManager>(context, listen: false);

    final GoRouter router = GoRouter(
      refreshListenable: appStateManager,
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/signin',
          builder: (BuildContext context, GoRouterState state) => const SignInScreen(),
        ),
        GoRoute(
          path: '/register',
          builder: (BuildContext context, GoRouterState state) => const Register(),
        ),
        GoRoute(
            path: '/suggestion',
          builder: (BuildContext context, GoRouterState state) => SuggestionScreen(),
        ),
        GoRoute (
          path: '/habit',
          builder: (BuildContext context, GoRouterState state) => HabitScreen()
        )
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final bool isOnRegisterScreen = state.matchedLocation == '/register';
        final bool isOnHabitScreen = state.matchedLocation == '/habit';


        // Redirect to the splash screen if not initialized
        if (!appStateManager.initialized) {
          return '/';
        }

        // Allow access to the register screen
        if (isOnRegisterScreen) {
          return null;
        }

        if (isOnHabitScreen) {
          return null;
        }

        // Redirect to sign-in if initialized but not signed in
        if (appStateManager.initialized && !appStateManager.signedIn) {
          return '/signin';
        }

        if (appStateManager.initialized && appStateManager.signedIn) {
          return '/suggestion';
        }

        // No redirect
        return null;
      },
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}