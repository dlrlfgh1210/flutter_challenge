import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/home/home_bottom_container.dart';

class HomeBottomSheet extends StatefulWidget {
  const HomeBottomSheet({super.key});

  @override
  State<HomeBottomSheet> createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: ListView(
            children: const [
              HomeBottomContainer(
                firstTitle: "Unfollow",
                secondTitle: "Mute",
                secondTitleColor: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              HomeBottomContainer(
                firstTitle: "Hide",
                secondTitle: "Report",
                secondTitleColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
