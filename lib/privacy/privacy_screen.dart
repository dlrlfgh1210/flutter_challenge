import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrivacyScreen extends StatefulWidget {
  static const String routeName = "privacy";
  static const String routeURL = "privacy";
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _notifications = false;

  void _onNotificationsChanged(bool? newValue) {
    if (newValue == null) return;
    setState(() {
      _notifications = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Privacy",
        ),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: _notifications,
            onChanged: _onNotificationsChanged,
            title: const Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.lock,
                ),
                SizedBox(
                  width: 30,
                ),
                Text("Private profile"),
              ],
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.at,
            ),
            title: Text("Mentions"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bellSlash,
            ),
            title: Text("Muted"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.eyeSlash,
            ),
            title: Text("Hidden Words"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.users,
            ),
            title: Text("Profiles you follow"),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
            ),
          ),
          SizedBox(
            width: 500,
            child: Divider(
              color: Colors.black.withOpacity(0.1),
              thickness: 2.0,
            ),
          ),
          const ListTile(
            title: Text(
              "Other privacy settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              "Some settings, like restrict, apply to both Threads and Instagram and can be managed on Instagram.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.bookmark,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleXmark,
            ),
            title: Text("Blocked profiels"),
            trailing: FaIcon(
              FontAwesomeIcons.bookmark,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bugSlash,
            ),
            title: Text("Hide likes"),
            trailing: FaIcon(
              FontAwesomeIcons.bookmark,
            ),
          ),
        ],
      ),
    );
  }
}
