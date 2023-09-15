import 'package:go_router/go_router.dart';
import 'package:nomad_flutter_challenge/navigation/main_navigation_screen.dart';
import 'package:nomad_flutter_challenge/privacy/privacy_screen.dart';
import 'package:nomad_flutter_challenge/setting/views/setting_screen.dart';

final myRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/:tab(|search|activity|profile)",
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
