import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/home/report_bottom_container.dart';
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
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AuthDescription(
                authTitle: "Why are you reporting this thread?",
                authDetail:
                    "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait",
              ),
              SizedBox(
                height: 10,
              ),
              ReportBottomContainer(
                reportTitle: "I just don't like it",
              ),
              ReportBottomContainer(
                reportTitle: "It's unlawful content under NetzDG",
              ),
              ReportBottomContainer(
                reportTitle: "It's spam",
              ),
              ReportBottomContainer(
                reportTitle: "Hate speech or symbols",
              ),
              ReportBottomContainer(
                reportTitle: "Nudity or sexual",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
