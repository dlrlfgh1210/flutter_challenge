import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_flutter_challenge/authentication/repos/authentication_repo.dart';
import 'package:nomad_flutter_challenge/authentication/views/login/login_screen.dart';
import 'package:nomad_flutter_challenge/privacy/privacy_screen.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  static const String routeName = "settings";
  static const String routeURL = "/settings";
  const SettingsScreen({super.key});

  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends ConsumerState<SettingsScreen> {
  void _onPrivacyTap() {
    context.pushNamed(PrivacyScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "Settings",
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: ref.watch(darkConfigProvider).isDarked,
            onChanged: (value) =>
                ref.read(darkConfigProvider.notifier).setDarked(value),
            title: Row(
              children: [
                FaIcon(
                  ref.watch(darkConfigProvider).isDarked
                      ? FontAwesomeIcons.moon
                      : Icons.sunny,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  ref.watch(darkConfigProvider).isDarked
                      ? "Dark Mode"
                      : "Light Mode",
                ),
              ],
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.userPlus,
            ),
            title: Text("Follow and invite friends"),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bell,
            ),
            title: Text("Notifications"),
          ),
          ListTile(
            onTap: _onPrivacyTap,
            leading: const FaIcon(
              FontAwesomeIcons.lock,
            ),
            title: const Text("privacy"),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleUser,
            ),
            title: Text("Account"),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.waterLadder,
            ),
            title: Text("Help"),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleInfo,
            ),
            title: Text("About"),
          ),
          SizedBox(
            width: 500,
            child: Divider(
              color: Colors.black.withOpacity(0.1),
              thickness: 2.0,
            ),
          ),
          ListTile(
            title: const Text("Log out"),
            textColor: Colors.blue.shade300,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Are you want to log out?"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        "No",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        ref.read(authRepo).signOut();
                        context.goNamed(LogInScreen.routeName);
                      },
                      child: const Text(
                        "Yes",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
