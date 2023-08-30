import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/widget/auth_description.dart';

class ReportBottomSheet extends StatefulWidget {
  const ReportBottomSheet({super.key});

  @override
  State<ReportBottomSheet> createState() => _ReportBottomSheetState();
}

class _ReportBottomSheetState extends State<ReportBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Scaffold(
          backgroundColor: Colors.grey.shade50,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade50,
            automaticallyImplyLeading: false,
            title: const Text("Report"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const AuthDescription(
                  authTitle: "Why are you reporting this thread?",
                  authDetail:
                      "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
                const ListTile(
                  title: Text("I just don't like it"),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
                const ListTile(
                  title: Text("It's unlawful content under NetzDG"),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
                const ListTile(
                  title: Text("It's spam"),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
                const ListTile(
                  title: Text("Hate speech or symbols"),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
                const ListTile(
                  title: Text("Nudity or sexual"),
                  trailing: FaIcon(FontAwesomeIcons.chevronRight),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
