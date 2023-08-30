import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/home/report_bottom_sheet.dart';

class HomeBottomContainer extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final Color secondTitleColor;
  const HomeBottomContainer({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.secondTitleColor,
  });
  void _onReportSheetTap(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => const ReportBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade500,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
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
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                if (secondTitle == "Report") {
                  return _onReportSheetTap(context);
                } else {
                  return;
                }
              },
              // onTap: () => _onReportSheetTap(context),
              child: Text(
                secondTitle,
                style: TextStyle(
                  color: secondTitleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
