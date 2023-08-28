import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountForm extends StatelessWidget {
  final TextEditingController createController;
  final String createHint, createText;
  const CreateAccountForm({
    super.key,
    required this.createController,
    required this.createHint,
    required this.createText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: createController,
          decoration: InputDecoration(
            suffixIcon: createText.isEmpty
                ? null
                : FaIcon(
                    FontAwesomeIcons.circleCheck,
                    color: Colors.green.shade300,
                  ),
            hintText: createHint,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
