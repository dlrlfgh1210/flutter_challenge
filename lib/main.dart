import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_flutter_challenge/router.dart';
import 'package:nomad_flutter_challenge/setting/repos/dark_config_repo.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  final preferences = await SharedPreferences.getInstance();
  final repository = DarkConfigRepository(preferences);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DarkConfigViewModel(repository),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: myRouter,
      themeMode: context.watch<DarkConfigViewModel>().isDarked
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      darkTheme: ThemeData(
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.white,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.grey.shade900,
        ),
      ),
    );
  }
}
