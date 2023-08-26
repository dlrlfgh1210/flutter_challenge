import 'package:flutter/material.dart';
import 'package:nomad_flutter_challenge/change_color_button.dart';

class InterestBottomAppBar extends StatelessWidget {
  const InterestBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: GestureDetector(
          child: const ChangeColorButton(
            disabled: false,
            buttonName: "Next",
            buttonSize: 0.3,
          ),
        ),
      ),
    );
  }
}
