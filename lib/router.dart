import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_flutter_challenge/authentication/repos/authentication_repo.dart';
import 'package:nomad_flutter_challenge/authentication/views/sign_up/sign_up_screen.dart';
import 'package:nomad_flutter_challenge/initial/initial_screen.dart';
import 'package:nomad_flutter_challenge/authentication/views/login/login_screen.dart';
import 'package:nomad_flutter_challenge/navigation/main_navigation_screen.dart';
import 'package:nomad_flutter_challenge/privacy/privacy_screen.dart';
import 'package:nomad_flutter_challenge/setting/views/setting_screen.dart';

final myRouterProvider = Provider((ref) {
  return GoRouter(
    initialLocation: "/home",
    redirect: (context, state) {
      final isLoggedIn = ref.read(authRepo).isLoggedIn;
      if (!isLoggedIn) {
        if (state.matchedLocation != SignUpScreen.routeURL &&
            state.matchedLocation != LogInScreen.routeURL) {
          return InitialScreen.routeURL;
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        name: LogInScreen.routeName,
        path: LogInScreen.routeURL,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        name: InitialScreen.routeName,
        path: InitialScreen.routeURL,
        builder: (context, state) => const InitialScreen(),
      ),
      GoRoute(
        name: SignUpScreen.routeName,
        path: SignUpScreen.routeURL,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: "/:tab(home|search|activity|profile)",
        name: MainNavigationScreen.routeName,
        builder: (context, state) {
          final tab = state.pathParameters["tab"]!;
          return MainNavigationScreen(tab: tab);
        },
      ),
      GoRoute(
        name: SettingsScreen.routeName,
        path: SettingsScreen.routeURL,
        builder: (context, state) => const SettingsScreen(),
        routes: [
          GoRoute(
            name: PrivacyScreen.routeName,
            path: PrivacyScreen.routeURL,
            builder: (context, state) => const PrivacyScreen(),
          ),
        ],
      ),
    ],
  );
});
