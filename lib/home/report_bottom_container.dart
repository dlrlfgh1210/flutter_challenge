import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReportBottomContainer extends StatelessWidget {
  final String reportTitle;
  const ReportBottomContainer({
    super.key,
    required this.reportTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 500,
          child: Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 2.0,
          ),
        ),
        ListTile(
          title: Text(reportTitle),
          trailing: const FaIcon(FontAwesomeIcons.chevronRight),
        ),
      ],
    );
  }
}
